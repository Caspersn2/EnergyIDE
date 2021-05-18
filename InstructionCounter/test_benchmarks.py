import os
import subprocess
import main
import sys
import shutil

benchmark_folder_path = '/home/anne/EnergyIDE/MLApproach/benchmarks'

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
    correctPath = "/home/anne/EnergyIDE/MLApproach/correct_benchmarks"
    bad_path = "/home/anne/EnergyIDE/MLApproach/bad_benchmarks"
    correct = 0
    not_correct = 0
    
    libs = os.listdir('init_library')
    print(libs)
    library_paths = ['init_library/' + x for x in libs]
    environment = main.load_environment(library_paths)

    for benchmark in benchmarks:
        output = count_benchmark(benchmark, environment)
        benchmark_path = benchmark_folder_path + '/' + benchmark
        if output == 1:
            to_path = f"{correctPath}/{benchmark}"
            shutil.move(benchmark_path, to_path)
            correct += 1
        else:
            to_path = f"{bad_path}/{benchmark}"
            shutil.move(benchmark_path, to_path)
            not_correct += 1
        print_current_stats(correct, not_correct)
    print('Done!')
