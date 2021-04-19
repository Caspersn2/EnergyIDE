import os
import subprocess
import main


def count_benchmark(benchmark, environment):
    benchmark_path = '../benchmarks/' + benchmark
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
        text = f'{benchmark}\n====================\n{ex.args[0]}\n\n'
        open('errors.txt', 'a+').write(text)
        return -1


def print_current_stats(correct, not_correct):
    print(f'Correct: {correct}, Incorrect: {not_correct}. TOTAL: {correct + not_correct} ({(correct / (correct + not_correct)) * 100}% success)')
    print('=' * 20)


if __name__ == '__main__':
    benchmarks = os.listdir('../benchmarks')
    correct = 0
    not_correct = 0
    
    libs = ['object', 'int32', 'delegate', 'uint32', 'valuetuple3', 'number', 'math', 'string', 'int64', 'span', 'readOnlySpan', 'byReference', 'array']
    library_paths = ['init_library/' + x + '.il' for x in libs]
    environment = main.load_environment(library_paths)

    for benchmark in benchmarks:
        output = count_benchmark(benchmark, environment)
        if output == 1:
            correct += 1
        else:
            not_correct += 1
        print_current_stats(correct, not_correct)
    print('Done!')