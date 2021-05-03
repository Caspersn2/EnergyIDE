import argparse
import os
import json
import requests
import asyncio
from aiohttp import web
import main

routes = web.RouteTableDef()
model_path = 'model.obj'

libraries = {}
def load_environment():
    # load environment
    print('Loading environment')
    all_library_paths = ['init_library/' + path for path in os.listdir('init_library')]
    libraries = main.load_environment(all_library_paths)
    print('Finished loading environment')


@routes.post('/counts')
async def get_counts(request):
    fileinfo = await request.json()
    path_to_assembly = fileinfo['path_to_assembly']
    methods = fileinfo['methods']
    abs_file_path = os.path.splitext(path_to_assembly)[0]
    name = os.path.split(abs_file_path)[-1]
    text = main.get_il_from_dll(path_to_assembly)

    # count instructions
    counts = {}  # maps method/program name to IL instruction Counter
    if methods:
        for method_name in methods:
            args = argparse.Namespace(
                method=method_name,
                list=False,
                instruction_set='InstructionCounter/instructions.yaml',
                counting_method='Simple',
                entry='Main(string[])',
                output=None,
                library=None)
            counts[method_name] = main.count_instructions(
                args, text, libraries)
    else:
        args = argparse.Namespace(
            method=None,
            list=False,
            instruction_set='InstructionCounter/instructions.yaml',
            counting_method='Simple',
            entry='Main(string[])',
            output=None,
            library=None)
        counts[name] = main.count_instructions(args, text, libraries)

    # return result
    return web.Response(text=json.dumps(counts), status=200)


load_environment()
app = web.Application()
app.add_routes(routes)
web.run_app(app, host='0.0.0.0', port=5004)
