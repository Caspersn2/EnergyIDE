from xml.dom import minidom
import pickle
import json
from functools import reduce
import requests
from collections import Counter


def get_ml_result(count, model, CIL_INSTRUCTIONS):
    temp = []
    for instruction in CIL_INSTRUCTIONS:
        temp.append(count[instruction]) if instruction in count else temp.append(0)
    return model.predict([temp])[0][0] / 1000000 # µj to j
    
def get_energy_model_result(counter):
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

if __name__ == "__main__":
    # Read all benchmarkable benchmarks
    benchmarks = ['MLApproach/benchmarks/100_doors_0/bin/Debug/net5.0/project.dll']
    results_output = []

    # ML Preprocess
    model = pickle.load(open('MLApproach/model.obj', "rb"))
    with open('MLApproach/CIL_Instructions.txt') as f:
        CIL_INSTRUCTIONS = [x.strip() for x in f.readlines()]

    # Energy Model Preprocess
    mydoc = minidom.parse('energyModeling/model-server/output.xml')
    items = mydoc.getElementsByTagName('method')
    ILModelDict = get_il_energy_values(items) 

    for benchmark in benchmarks:
        # count instructions, maps program name to IL instruction Counter
        counts = requests.post('http://0.0.0.0:5004/counts', json={'path_to_assembly' : benchmark, 'methods': None})
        counts = counts.json()
        counts = reduce(lambda a, b: Counter(a) + Counter(b), counts, counts[0])

        # Run with ML
        results_output[benchmark] += get_ml_result(counts, model, CIL_INSTRUCTIONS)

        # Run with energy model
        results_output[benchmark] += get_energy_model_result(counts)
        print(results_output)