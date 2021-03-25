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

@routes.post('/post')
async def get_estimate(request):
    # If the machine learning model is not available
    # return 503: service unavailable
    if model_path not in os.listdir():
        return web.Response(text='This service is currently unavailable. No energy model is pressent', status=503)

    # Read the XML model file
    mydoc = minidom.parse(model_path)
    items = mydoc.getElementsByTagName('method')
    
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
    
    # Read the request info
    fileinfo = await request.json()
    print(fileinfo)
    path_to_assembly = fileinfo['path']
    methods = fileinfo['methods']
    name = path_to_assembly.split('/')[-1].split('.')[0]

    # dissassemble path
    subprocess.call(
        f'ilspycmd {path_to_assembly} -o . -il', shell=True)

    # get il code
    # text = open(f'{name}.il').read()
    text = open('C:/Users/Caspe/Documents/GitHub/EnergyIDE/MLApproach/InstructionCounter/testSets/100Doors.il').read()

    # Count instructions
    counts = {}  # maps method/program name to IL instruction Counter
    if methods:
        for method_name in methods:
            args = argparse.Namespace(method=method_name, list=False, instruction_set='../../MLApproach/InstructionCounter/instructions.yaml',
                                      counting_method='Simple', entry='Main(string[])', output=None)
            counts[method_name] = main.count_instructions(args, text)
    else:
        args = argparse.Namespace(method=None, list=False, instruction_set='../../MLApproach/InstructionCounter/instructions.yaml',
                                  counting_method='Simple', entry='Main(string[])', output=None)
        counts[name] = main.count_instructions(args, text)
    
    # Calculate measurements for all methods
    print(counts)
    for methodName, counter in counts.items():
        counter = reduce(lambda a, b: a+b, counter, counter[0])
        sum = 0.0
        for IL in counter:
            count = counter[IL]
            IL = ILToEmit(IL)

            if IL in ILModelDict:
                cost = ILModelDict[IL]
                sum += count*cost
            else: 
                print(IL + " is not measured")
        print(methodName + ": " + str(sum))
    
    # return result
    return web.Response(text="something", status=200)

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

