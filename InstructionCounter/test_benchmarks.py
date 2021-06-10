import os
import subprocess
import main
import sys
import shutil

benchmark_folder_path = 'C:/Users/Caspe/Documents/GitHub/EnergyIDE/MLApproach/benchmarks'

def count_benchmark(benchmark, environment):
    benchmark_path = benchmark_folder_path + '/' + benchmark
    dll_path = benchmark_path + '/bin/Debug/net5.0/project.dll'
    
    print(f'Building: {benchmark}')
    progress = subprocess.run(f'dotnet build {benchmark_path}', shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    if progress.returncode != 0:
        print('The benchmark could not be build')
        return

    try:
        _ = main.simulate(dll_path, True, environment)
        return 1
    except Exception as ex:
        text = f'{benchmark}\n====================\n{str(ex)}\n\n'
        open('errors.txt', 'a+').write(text)
        return -1


def print_current_stats(correct, not_correct):
    print(f'Correct: {correct}, Incorrect: {not_correct}. TOTAL: {correct + not_correct} ({(correct / (correct + not_correct)) * 100}% success)')
    print('=' * 20)


if __name__ == '__main__':
    benchmarks = os.listdir(benchmark_folder_path)
    correctPath = "C:/Users/Caspe/Documents/GitHub/EnergyIDE/MLApproach/correct_benchmarks"
    correct = 0
    not_correct = 0
    
    libs = ['object', 'int32', 'delegate', 'uint32', 'valuetuple3', 'number', 'math', 'string', 'int64', 'span', 'readOnlySpan', 'byReference', 'array', 'timeSpan', 'buffer_text_helper', 'datetime', 'linq', 'list', 'numerics']
    library_paths = ['init_library/' + x + '.il' for x in libs]
    environment = main.load_environment(library_paths)

    for benchmark in benchmarks:
        output = count_benchmark(benchmark, environment)
        if output == 1:
            benchmark_path = benchmark_folder_path + '/' + benchmark
            from_path = f"\"{benchmark_path}\""
            to_path = f"\"{correctPath}/{benchmark}\""

            shutil.move(from_path, to_path)
            # subprocess.run(f'move {from_path} {to_path}', shell=True)
            correct += 1
        else:
            not_correct += 1
        print_current_stats(correct, not_correct)
    print('Done!')
