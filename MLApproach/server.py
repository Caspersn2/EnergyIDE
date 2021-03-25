import sys
sys.path.append('InstructionCounter')
from functools import reduce
import argparse
import pickle
import os
import json
import requests
import subprocess
import asyncio
from aiohttp import web
from InstructionCounter import main

routes = web.RouteTableDef()
model_path = 'model.obj'


@routes.post('/post')
async def get_estimate(request):
    # If the machine learning model is not available
    # return 503: service unavailable
    if model_path not in os.listdir():
        return web.Response(text='This service is currently unavailable. No regression model is present', status=503)

    json_data = await request.json()
    active_classes = json_data['activeClasses']
    all_predictions = {}
    for current_class in active_classes:
        path_to_assembly = current_class['AssemblyPath']
        className = current_class['ClassName']
        methods = current_class['Methods']
        name = path_to_assembly.split('/')[-1].split('.')[0]

        # dissassemble
        subprocess.call(
            f'ilspycmd {path_to_assembly} -o . -il', shell=True)

        # get il code
        text = open(f'{name}.il').read()

        # count instructions
        counts = {}  # maps method/program name to IL instruction Counter
        if methods:
            for method_name in [className+'::'+m['StringRepresentation'].split()[1].replace('System.','') for m in methods]:
                args = argparse.Namespace(method=method_name, list=False, instruction_set='InstructionCounter/instructions.yaml',
                                        counting_method='Simple', entry='Main(string[])', output=None)
                counts[method_name] = main.count_instructions(args, text)
        else:
            args = argparse.Namespace(method=None, list=False, instruction_set='InstructionCounter/instructions.yaml',
                                    counting_method='Simple', entry='Main(string[])', output=None)
            counts[name] = main.count_instructions(args, text)

        # make prediction
        predictions = {} # maps method/program name to energy prediction
        model = pickle.load(open(model_path, "rb"))
        with open('CIL_Instructions.txt') as f:
            CIL_INSTRUCTIONS = [x.strip() for x in f.readlines()]

        for name, count in counts.items():
            count = reduce(lambda a, b: a+b, count, count[0])
            temp = []
            for instruction in CIL_INSTRUCTIONS:
                temp.append(count[instruction]) if instruction in count else temp.append(0)
            predictions[name] = model.predict([temp])[0][0] / 1000000 # µj to j
        all_predictions[className] = predictions

    # return result
    return web.Response(text=json.dumps(all_predictions), status=200)


app = web.Application()
app.add_routes(routes)
web.run_app(app, host='0.0.0.0', port=5002)
