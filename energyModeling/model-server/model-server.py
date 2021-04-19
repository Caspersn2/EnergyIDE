import sys, os
sys.path.append(os.path.join(os.path.dirname(os.path.dirname(sys.path[0])),'MLApproach', 'InstructionCounter'))
sys.path.append(os.path.join(os.path.dirname(os.path.dirname(sys.path[0])),'MLApproach'))
from InstructionCounter import main

from functools import reduce
import argparse
import json
import requests
import subprocess
import asyncio
from aiohttp import web
from xml.dom import minidom

routes = web.RouteTableDef()
model_path = 'output.xml'

def get_il_energy_values(items):
    ILModelDict = {}
    for item in items:
        name = "undefined"
        # Gets the name of method/IL code
        name = getValueOfTagName(item, 'name')
        
        for measurement in item.getElementsByTagName('measurement'):
            mean = getValueOfTagName(measurement, 'mean-subtracted')
            if not mean :
                # Maybe this should not be here i guess
                mean = mean = getValueOfTagName(measurement, 'mean')
            ILModelDict[name] = float(mean.replace(',', '.'))
    return ILModelDict

def get_cil_counts(methods,className, text):
    counts = {}  # maps method/program name to IL instruction Counter
    if methods:
        for method_name in [className+'::'+m['StringRepresentation'].split()[1].replace('System.','') for m in methods]:
            args = argparse.Namespace(method=method_name, list=False, instruction_set='../../MLApproach/InstructionCounter/instructions.yaml',
                                    counting_method='Simple', entry='Main(string[])', output=None)
            counts[method_name] = main.count_instructions(args, text)
    else:
        args = argparse.Namespace(method=None, list=False, instruction_set='../../MLApproach/InstructionCounter/instructions.yaml',
                                counting_method='Simple', entry='Main(string[])', output=None)
        counts[name] = main.count_instructions(args, text)
    return counts

progress = "Not started"
@routes.get('/progress')
async def get_progress():
    print('progress: ' + progress)
    return progress

@routes.post('/start')
async def get_estimate(request):
    global progress
    print('Started to estimate')
    # If the energy model is not available
    # return 503: service unavailable
    if model_path not in os.listdir():
        return web.Response(text='This service is currently unavailable. No energy model is pressent', status=503)
    print('Found the model')
    # Read the XML model file
    progress = "Reading Energy model file"
    mydoc = minidom.parse(model_path)
    items = mydoc.getElementsByTagName('method')
    ILModelDict = get_il_energy_values(items)
    
    # Read the request info
    progress = "Reading request"
    json_data = await request.json()
    activate_classes = json_data['activeClasses']
    all_results = {}
    for current_class in activate_classes:
        path_to_assembly = current_class['AssemblyPath']
        class_name = current_class['ClassName']
        methods = current_class['Methods']
        abs_file_path = os.path.splitext(path_to_assembly)[0]
        name = os.path.split(abs_file_path)[-1]
        progress = 'Calculating methods for class ' + class_name

        # dissassemble and get il code
        subprocess.call(f'ilspycmd {path_to_assembly} -o . -il', shell=True)
        text = open(f'{name}.il').read()
        
        # Count instructions
        counts = get_cil_counts(methods, class_name, text)

        # Calculate measurements for all methods in class
        results = {}
        for method_name, counter in counts.items():
            counter = reduce(lambda a, b: a+b, counter, counter[0])
            sum = 0.0
            for instruction in counter:
                count = counter[instruction]
                instruction = ILToEmit(instruction)
                if instruction in ILModelDict:
                    cost = ILModelDict[instruction]
                    sum += count*cost
            results[method_name] = sum
        all_results[class_name] = results

    # return result
    progress = "Done / Not started"
    return web.Response(text=json.dumps(all_results), status=200)

# Converts the Assembly IL format to the format used by microsoft reflection.
# TODO: This can be left out if either the instructions.yaml or the methods when creating the models are renamed to the same.
def ILToEmit(IL):
    IL = IL.replace('.', '_')
    new = ""
    for split in IL.split('_'):
        new += split.capitalize()
    return new

def getValueOfTagName(node, tagName):
    for child in node.childNodes:
        if (child.nodeName == tagName):
            return child.firstChild.nodeValue
    return None


app = web.Application()
app.add_routes(routes)
web.run_app(app, host='0.0.0.0', port=5003)

