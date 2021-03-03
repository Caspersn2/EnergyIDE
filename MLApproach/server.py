from aiohttp import web
import asyncio
import subprocess
import requests, json, os, pickle, argparse
from InstructionCounter import main

routes = web.RouteTableDef()
model_path = 'model.obj'

@routes.post('/post')
async def get_estimate(request):
    # If the machine learning model is not available
    # return 503: service unavailable
    if model_path not in os.listdir():
        return web.Response(text='This service is currently unavailable.', status=503)

    fileinfo = await request.json()
    path_to_assembly = fileinfo['path']
    methods = fileinfo['methods']
    name = path_to_assembly.split('/')[-1].split('.')[0]

    # dissassemble
    subprocess.call(
        f'ilspycmd {path_to_assembly} -o . -il', shell=True)

    # get il code
    text = open(f'{name}.il').read()

    # count instructions
    counts = {}
    if methods:
        for method_name in methods:
            args = argparse.Namespace(method=methods, list=False, instruction_set='InstructionCounter/instructions.yaml', counting_method='Simulation',entry='Main')
            counts[method_name] = main.count_instructions(args, text)
    else:
        args = argparse.Namespace(method=None, list=False, instruction_set='InstructionCounter/instructions.yaml', counting_method='Simulation',entry='Main')
        counts[name] = main.count_instructions(args, text)

    # make prediction
    predictions = {}
    model = pickle.load(model_path)
    with open('listOfCILInstructions.txt') as f:
        CIL_INSTRUCTIONS = [x.strip() for x in f.readlines()]

    for count in counts:
        temp = []
        for instruction in CIL_INSTRUCTIONS:
            temp.append(counts[instruction]) if instruction in counts else temp.append(0)
        predictions[count] = model.predict(temp)

    # return result
    return web.Response(text=json.dumps(predictions),status=200)


app = web.Application()
app.add_routes(routes)
web.run_app(app, host='0.0.0.0', port=5002)
