import os
import re
import subprocess
from tqdm import tqdm
from loguru import logger


def refactor_for_energy_measurement(path):
    with open(f'{path}/Program.cs') as f:
        code = f.readlines()

    # Find beginning of Main function and insert "bm.Run(() => {"
    insert_index = 0
    opening_brackets = -1

    closing_brackets = 0
    code.insert(0, 'using benchmark;\n')
    for index, line in enumerate(code):
        if 'static void Main' in line:
            if '{' in line:
                code.insert(index+1, 'var bm = new Benchmark(1);\n')
                code.insert(index+2, 'bm.Run(() => {\n')
                insert_index = index
                break
            else:
                code.insert(index+2, 'var bm = new Benchmark(1);\n')
                code.insert(index+3, 'bm.Run(() => {\n')
                insert_index = index
                break

    # Find end of Main function and insert closing brackets
    for index, line in enumerate(code[insert_index:]):
        opening_brackets += line.count('{')
        closing_brackets += line.count('}')
        if opening_brackets == closing_brackets and opening_brackets != 0 and closing_brackets != 0:
            code.insert(index + insert_index, 'return "' +
                        path.split('/')[1] + '";});\n')
            break

    # Update code
    with open(f'{path}/Program.cs', 'w') as f:
        f.write(''.join(code))


if __name__ == '__main__':
    logger.add('perform_energy_measurements.log')
    # Clear temp results
    with open('tempResults.csv', 'w+') as data:
        data.write('name;duration(ms);pkg(µj);dram(µj);temp(C)\n')

    # Enumerate all benchmarks
    all_benchmarks = os.listdir('benchmarks')
    all_benchmarks = list(map(lambda x: f'benchmarks/' + x, all_benchmarks))
    clbg_benchmarks = os.listdir('clbg_benchmarks')
    all_benchmarks.extend(list(map(lambda x: f'clbg_benchmarks/' + x, clbg_benchmarks)))

    for benchmark in tqdm(all_benchmarks):

        # Refactor code to implement benchmark library, such that ww can get
        # energy measurements of the benchmark
        refactor_for_energy_measurement(benchmark)

        # Perform energy measurement
        try:
            subprocess.run(f'dotnet build {benchmark}', shell=True, check=True,
                           stdout=subprocess.DEVNULL,
                           stderr=subprocess.DEVNULL)
            subprocess.run(f'dotnet run -p {benchmark}', shell=True, check=True,
                           stdout=subprocess.DEVNULL,
                           stderr=subprocess.DEVNULL)
        except:
            logger.info(f'Could not build or run: {benchmark}')
