import os
from collections import Counter
import subprocess


def count_occurrences(benchmark):
    # Read cil code
    with open(benchmark) as f:
        cil_code = f.read().split()  # Split by whitespace
    # Keep only CIL instructions
    cil_code = [x for x in cil_code if x in CIL_INSTRUCTIONS]

    # Count all occuronces of CIL instructions
    return Counter(cil_code)


def dissamble(path_to_benchmark):
    # Build benchmark
    subprocess.call(f'dotnet build {path_to_benchmark}', shell=True)

    # Disassemble to CIL. Save as Prorgam.il
    path_to_assembly = f'{path_to_benchmark}/bin/Debug/net5.0'
    assembly = [f for f in os.listdir(path_to_assembly) if '.dll' in f][0]
    subprocess.call(
        f'dotnet-ildasm {path_to_assembly}/{assembly} -o {path_to_benchmark}/Program.il', shell=True)


def add_to_csv(benchmark, counts):
    csv_line = []
    csv_line.append(benchmark)
    for instruction in CIL_INSTRUCTIONS:
        csv_line.append(
            str(counts[instruction])) if instruction in counts else csv_line.append('0')

    with open(dataset_file, 'a') as f:
        f.write(','.join(csv_line))
        f.write('\n')


with open('listOfCILInstructions.txt') as f:
    CIL_INSTRUCTIONS = [x.strip() for x in f.readlines()]

base_dir = 'benchmarks'
dataset_file = 'training.csv'
could_not_build = []
with open(dataset_file, 'w+') as f:
    f.write('name,')
    f.write(','.join(CIL_INSTRUCTIONS))
    f.write('\n')

# Enumerate all benchmarks
all_benchmarks = os.listdir(base_dir)
for benchmark in all_benchmarks:
    path_to_benchmark = f'{base_dir}/{benchmark}'

    # Dissamble C# to CIL
    try:
        dissamble(path_to_benchmark)
    except:
        could_not_build.append(benchmark)
        continue

    # Count instructions
    counts = count_occurrences(f'{path_to_benchmark}/Program.il')

    # Add to csv (Columns: Benchmark name, instruction1, instruction2 ...)
    add_to_csv(benchmark, counts)

print(could_not_build)

# Add energy at some point
