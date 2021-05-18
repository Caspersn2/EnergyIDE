import subprocess
import os
from collections import Counter
from tqdm import tqdm
import requests
from functools import reduce

def add_to_csv(benchmark, counts, filename):
    csv_line = []
    csv_line.append(benchmark)
    for instruction in CIL_INSTRUCTIONS:
        csv_line.append(
            str(counts[instruction])) if instruction in counts else csv_line.append('0')

    with open(filename, 'a') as f:
        f.write(','.join(csv_line))
        f.write('\n')

with open('CIL_Instructions.txt') as f:
    CIL_INSTRUCTIONS = [x.strip() for x in f.readlines()]

base_dir = 'benchmarks'

if __name__ == '__main__':
    filename = 'training.csv'
    
    # Adds top line to CSV
    with open(filename, 'w+') as f:
        f.write('name,')
        f.write(','.join(CIL_INSTRUCTIONS))
        f.write('\n')

    # Enumerate all benchmarks
    all_benchmarks = os.listdir(base_dir)
    for benchmark in tqdm(all_benchmarks):
        if 'functional_c#' in benchmark or 'functional_f#' in benchmark or 'procedural_c#' in benchmark or 'procedural_f#' in benchmark or 'oop_c#' in benchmark or 'oop_f#' in benchmark:
            continue
        path_to_assembly = f'/home/anne/EnergyIDE/MLApproach/correct_benchmarks/{benchmark}/bin/Release/net5.0/project.dll'

        try:
            subprocess.run(f'dotnet build --configuration Release --nologo --verbosity quiet correct_benchmarks/{benchmark}', 
                            shell=True, check=True, stdout=subprocess.DEVNULL)
        except:
            continue

        # count instructions, maps method/program name to IL instruction Counter
        counts = requests.post('http://localhost:5004/counts', json={'path_to_assembly' : path_to_assembly, 'methods': None, 'inputs': None, 'class_name': None})
        counts = counts.json()['project']
        counts = reduce(lambda a, b: Counter(a) + Counter(b), counts, counts[0])

        # Add to csv (Columns: Benchmark name, instruction1, instruction2 ...)
        add_to_csv(benchmark, counts, filename)
