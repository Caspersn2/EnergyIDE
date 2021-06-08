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
import time

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
    #print(str(percentInstructions) + "\t" + str(percentTotal))
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
    energy_df = pd.DataFrame(columns=['name','LinearRegression', 'Lasso', 'Ridge', 'RandomForestRegressor', 'SVR', 'energy-model'])
    time_df = pd.DataFrame()

    # ML Preprocess
    df = pd.read_csv('MLApproach/output.csv')
    regressions = [LinearRegression(), Lasso(), Ridge(), RandomForestRegressor(max_depth=10, random_state=0), SVR(kernel='rbf', C=1e3, gamma=0.1)]
    with open('MLApproach/CIL_Instructions.txt') as f:
        CIL_INSTRUCTIONS = [x.strip() for x in f.readlines()]

    # Energy Model Preprocess
    mydoc = minidom.parse('/home/anne/EnergyIDE/energyModeling/Modeling/output.xml')
    items = mydoc.getElementsByTagName('method')
    ILModelDict = get_il_energy_values(items) 
    ITERATIONS = 100

    for benchmark in benchmarks:
        time_measurements = []
        if 'functional_c#' in benchmark or 'functional_f#' in benchmark or 'procedural_c#' in benchmark or 'procedural_f#' in benchmark or 'oop_c#' in benchmark or 'oop_f#' in benchmark or 'Pythagorean' in benchmark:
            continue
        path = f'/home/anne/EnergyIDE/MLApproach/correct_benchmarks/{benchmark}/bin/Debug/net5.0/project.dll'
        energy_results = {'name' : benchmark}
        time_results = {'name' : benchmark}
        # count instructions, maps program name to IL instruction Counter
        for _ in range(ITERATIONS):
            start = time.time()
            counts = requests.post('http://localhost:5004/counts', json={'path_to_assembly' : path, 'methods': None, 'class_name': "hey", 'inputs': None})
            end = time.time()
            time_measurements.append((end-start)*1000)
        time_results['counts (ms)'] = np.mean(time_measurements)
        time_measurements = []
        counts = counts.json().get('project')
        counts = reduce(lambda a, b: Counter(a) + Counter(b), counts, counts[0])
        
        # Run with ML
        for model in regressions:
            new_df = df[df.name != benchmark]
            X = pd.DataFrame(new_df.drop(['name', 'sample mean (µj)'], axis=1))
            y = pd.DataFrame(new_df['sample mean (µj)'])
            y = np.ravel(y)
            model.fit(X, y)
            estimate = get_ml_result(counts, model, CIL_INSTRUCTIONS)
            for _ in range(ITERATIONS):
                start = time.time()
                get_ml_result(counts, model, CIL_INSTRUCTIONS)
                end = time.time()
                time_measurements.append((end-start)*1000)
            time_results[str(model).split('(')[0] + '(ms)'] = np.mean(time_measurements)
            time_measurements = []
            energy_results[str(model).split('(')[0]] = estimate

        # Run with energy model
        for _ in range(ITERATIONS):
            start = time.time()
            estimate = get_energy_model_result(counts, ILModelDict, benchmark)
            end = time.time()
            time_measurements.append((end-start)*1000)
        time_results['energy-model (ms)'] = np.mean(time_measurements)
        time_measurements = []
        energy_results['energy-model'] = estimate

        # Append results
        time_df = time_df.append(time_results, ignore_index=True)
        time_df.to_csv('time_results.csv')
        energy_df = energy_df.append(energy_results, ignore_index=True)

    package = pd.read_csv("results_stats_pkg_power.csv", sep=';')
    package = package.iloc[:, : 2]
    package.columns = map(str.lower, package.columns)
    package['name'] = package['name'].apply(lambda x: x.replace('MLApproach/correct_benchmarks/', ''))
    package['sample mean (µj)'] = package['sample mean (µj)'].apply(lambda x: x.replace('.', ''))
    package['sample mean (µj)'] = package['sample mean (µj)'].apply(lambda x: x.replace(',', '.'))
    df1 = package.merge(energy_df, on='name')
    df1.to_csv('energy_results.csv')

    run_time = pd.read_csv("results_stats_run_time.csv", sep=';')
    run_time['Sample Mean (ms)'] = run_time['Sample Mean (ms)'].apply(lambda x: x.replace('.', ''))
    run_time['Sample Mean (ms)'] = run_time['Sample Mean (ms)'].apply(lambda x: x.replace(',', '.'))
    time_df['dynamic (ms)'] = pd.to_numeric(run_time['Sample Mean (ms)']) * pd.to_numeric(run_time['Runs'])
    time_df.to_csv('time_results.csv')


    print(DoNotHaveInstructions)