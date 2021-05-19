from xml.dom import minidom
import pickle
import json
from functools import reduce
import requests
from collections import Counter
import os
import pandas as pd
from sklearn.linear_model import LinearRegression, Lasso, Ridge
from sklearn.ensemble import RandomForestRegressor
from sklearn.svm import SVR
import numpy as np

def get_ml_result(count, model, CIL_INSTRUCTIONS):
    temp = []
    for instruction in CIL_INSTRUCTIONS:
        temp.append(count[instruction]) if instruction in count else temp.append(0)
    return model.predict([temp])[0]

DoNotHaveInstructions = {}
def get_energy_model_result(counter, ILModelDict, name):
    sum = 0.0
    methodResult = 0
    has = 0
    hasTotal = 0
    total = 0
    for instruction in counter:
        count = counter[instruction]
        total = total + count
        instruction = ILToEmit(instruction)
        if instruction in ILModelDict:
            hasTotal = hasTotal + count
            has = has + 1
            cost = ILModelDict[instruction]['package']
            methodResult += count * cost
        else:
            if instruction not in DoNotHaveInstructions:
                DoNotHaveInstructions[instruction] = 1
            else:
                DoNotHaveInstructions[instruction] += 1
    percentInstructions = (100 / len(counter)) * has
    percentTotal = (100 / total) * hasTotal
    print(str(percentInstructions) + "\t" + str(percentTotal))
    with open("test.csv", "a") as myfile:
        myfile.write("\n" + str(name) + ";" + str(percentInstructions) + ";" + str(percentTotal) + ";" + str(len(counter)) + ";" + str(total) + ";" + str(has) + ";" + str(hasTotal))
    return methodResult

def ILToEmit(IL):
    splitted = IL.split('.')
    new = ""
    for split in splitted:
        new += split.capitalize() + "_"
    return new[:-1]

    #IL = IL.replace('.', '_')
    #new = ""
    #for split in IL.split('_'):
    #    new += split.capitalize()
    #return new

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
        if (getValueOfTagName(item, 'result') == "Failed"):
            continue
        
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
    benchmarks = os.listdir('MLApproach/correct_benchmarks')
    static = pd.DataFrame(columns=['name','LinearRegression', 'Lasso', 'Ridge', 'RandomForestRegressor', 'SVR', 'energy-model'])

    # ML Preprocess
    df = pd.read_csv('MLApproach/output.csv')
    regressions = [LinearRegression(), Lasso(), Ridge(), RandomForestRegressor(max_depth=10, random_state=0), SVR(kernel='rbf', C=1e3, gamma=0.1)]
    with open('MLApproach/CIL_Instructions.txt') as f:
        CIL_INSTRUCTIONS = [x.strip() for x in f.readlines()]

    # Energy Model Preprocess
    mydoc = minidom.parse('C:/Users/Caspe/Documents/GitHub/EnergyIDE/energyModeling/Modeling/output.xml')
    items = mydoc.getElementsByTagName('method')
    ILModelDict = get_il_energy_values(items) 

    for benchmark in benchmarks:
        if 'functional_c#' in benchmark or 'functional_f#' in benchmark or 'procedural_c#' in benchmark or 'procedural_f#' in benchmark or 'oop_c#' in benchmark or 'oop_f#' in benchmark:
            continue
        path = f'C:/Users/Caspe/Documents/GitHub/EnergyIDE/MLApproach/correct_benchmarks/{benchmark}/bin/Debug/net5.0/project.dll'
        results_output = {'name' : benchmark}
        # count instructions, maps program name to IL instruction Counter
        counts = requests.post('http://localhost:5004/counts', json={'path_to_assembly' : path, 'methods': None, 'class_name': "hey", 'inputs': None})
        counts = counts.json().get('project')
        counts = reduce(lambda a, b: Counter(a) + Counter(b), counts, counts[0])
        
        # Run with ML
        for model in regressions:
            new_df = df[df.name != benchmark]
            X = pd.DataFrame(new_df.drop(['name', 'sample mean (µj)'], axis=1))
            y = pd.DataFrame(new_df['sample mean (µj)'])
            y = np.ravel(y)
            model.fit(X, y)
            results_output[str(model).split('(')[0]] = get_ml_result(counts, model, CIL_INSTRUCTIONS)

        # Run with energy model
        results_output['energy-model'] = get_energy_model_result(counts, ILModelDict, benchmark)
        #print(results_output['energy-model'])
        static = static.append(results_output, ignore_index=True)

    package = pd.read_csv("results_stats_pkg_power.csv", sep=';')
    package = package.iloc[:, : 2]
    package.columns = map(str.lower, package.columns)
    package['name'] = package['name'].apply(lambda x: x.replace('MLApproach/correct_benchmarks/', ''))
    package['sample mean (µj)'] = package['sample mean (µj)'].apply(lambda x: x.replace('.', ''))
    package['sample mean (µj)'] = package['sample mean (µj)'].apply(lambda x: x.replace(',', '.'))

    df = package.merge(static, on='name')

    df.to_csv('static_results.csv')
    #print(df)
    print(DoNotHaveInstructions)