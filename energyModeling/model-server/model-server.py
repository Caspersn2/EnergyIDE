import os
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
        
        measureDict = {}
        for measurement in item.getElementsByTagName('measurement'):
            mean = getValueOfTagName(measurement, 'mean-subtracted')
            measurementName = getValueOfTagName(measurement, 'name')
            if not mean :
                # Maybe this should not be here i guess
                mean = getValueOfTagName(measurement, 'mean')
            measureDict[measurementName] = float(mean.replace(',', '.'))
        
        ILModelDict[name] = measureDict
    return ILModelDict

progress = "Not started"
@routes.get('/progress')
async def get_progress():
    print('progress: ' + progress)
    return progress

@routes.post('/start')
async def get_estimate(request):
    global progress
    
    # If the energy model is not available
    # return 503: service unavailable
    if model_path not in os.listdir():
        return web.Response(text='This service is currently unavailable. No energy model is pressent', status=503)
    
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
        counts = requests.post('http://0.0.0.0:5004/counts', json={'path_to_assembly' : path_to_assembly, 'methods': methods})
        counts = counts.json()

        # Calculate measurements for all methods in class
        results = {}
        for method_name, counter in counts.items():
            counter = reduce(lambda a, b: Counter(a) + Counter(b), count, count[0])
            sum = 0.0
            methodResult = {}
            for instruction in counter:
                count = counter[instruction]
                instruction = ILToEmit(instruction)
                if instruction in ILModelDict:
                    for measurementType in ILModelDict[instruction]:
                        cost = ILModelDict[instruction][measurementType]
                        if measurementType in methodResult:
                            methodResult[measurementType] += count * cost
                        else:
                            methodResult[measurementType] = count * cost
            results[method_name] = methodResult
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

