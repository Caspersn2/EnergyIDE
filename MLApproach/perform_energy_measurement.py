import os
import re
import subprocess
import signal
from tqdm import tqdm
from loguru import logger

class TimeoutException(Exception):
    pass

def timeout_handler(signum, frame):
    raise TimeoutException

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
    # Initialise logger and alarm
    logger.add('perform_energy_measurements.log')
    signal.signal(signal.SIGALRM, timeout_handler)
    # Clear temp results
    with open('tempResults.csv', 'w+') as data:
        data.write('name;duration(ms);pkg(µj);dram(µj);temp(C)\n')

    # Enumerate all benchmarks
    all_benchmarks = os.listdir('correct_benchmarks')
    all_benchmarks = list(map(lambda x: f'correct_benchmarks/' + x, all_benchmarks))

    for benchmark in tqdm(all_benchmarks):

        # Refactor code to implement benchmark library, such that ww can get
        # energy measurements of the benchmark
        if 'functional_c#' in benchmark or 'functional_f#' in benchmark or 'procedural_c#' in benchmark or 'procedural_f#' in benchmark or 'oop_c#' in benchmark or 'oop_f#' in benchmark:
            continue
        #refactor_for_energy_measurement(benchmark)


        # Start timer. If exceeds 5 min, the benchmark is probably waiting for input,
        # so we continue to the next and log the benchmark
        signal.alarm(5*60)

        # Perform energy measurement
        try:
            subprocess.run(f'dotnet build {benchmark}', shell=True, check=True)
                           #stdout=subprocess.DEVNULL,
                           #stderr=subprocess.DEVNULL)
            subprocess.run(f'dotnet run -p {benchmark}', shell=True, check=True)
                           #stdout=subprocess.DEVNULL,
                           #stderr=subprocess.DEVNULL)
        except TimeoutException:
            logger.info(f'Benchmark timed out: {benchmark}')
            continue
        except:
            logger.info(f'Could not build or run: {benchmark}')
            continue
        else:
            # If no exceptions reset the alarm
            signal.alarm(0)
