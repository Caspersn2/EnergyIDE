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


system2primitive = {
    'String': 'string',
    'Int32': 'int32',
    'Int64': 'int64',
    'Float32': 'float32',
    'Float64': 'float64'
}


def get_method_name(class_name, inputs_name):
    qualified_method = inputs_name.split(' ', 1)[-1]
    method_name, parameters = qualified_method.split('(')
    parameters = parameters.replace('System.', '')
    for key in system2primitive:
        if key in parameters:
            parameters = parameters.replace(key, system2primitive[key])
    return class_name + '::' + method_name + '(' + parameters


def load_environment():
    # load environment
    global libraries
    print('Loading environment')
    all_library_paths = ['init_library/' + path for path in os.listdir('init_library')]
    libraries = main.load_environment(all_library_paths)
    print('Finished loading environment')


@routes.post('/counts')
async def get_counts(request):
    fileinfo = await request.json()
    print(fileinfo)
    path_to_assembly = fileinfo['path_to_assembly']
    methods = fileinfo['methods']
    class_name = fileinfo['class_name']
    inputs = fileinfo['inputs']
    abs_file_path = os.path.splitext(path_to_assembly)[0]
    name = os.path.split(abs_file_path)[-1]
    text = main.get_il_from_dll(path_to_assembly)

    # count instructions
    counts = {}  # maps method/program name to IL instruction Counter
    if methods:
        for method_name in methods:
            string_name = method_name['StringRepresentation']
            qualified_method_name = get_method_name(class_name, string_name)
            counts[string_name] = main.simulate(text, False, libraries, qualified_method_name, inputs[string_name])
    else:
        counts[name] = main.simulate(text, False, libraries)

    # return result
    return web.Response(text=json.dumps(counts), status=200)


load_environment()
app = web.Application()
app.add_routes(routes)
web.run_app(app, host='0.0.0.0', port=5004)
