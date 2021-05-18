from run.cochran import run_benchmark
from . import benchmark_utils as bm_utils
import subprocess

#Performs the list of benchmarks and saves to results to output csv file
def perform_benchmarks(benchmarks, experiment_iterations, output_file):
    statistics, csv_output = bm_utils.setup(output_file)
    benchmark_count = len(benchmarks)

    for index, b in enumerate(benchmarks):
        print('\r' + "Performing benchmark " + str(index + 1) + " of " + str(benchmark_count), end='', flush=True)
        print("\n", b.path, flush=True)

        subprocess.run(b.get_build_command(), 
                        shell=True, check=True, stdout=subprocess.DEVNULL)
        statistics.clear()

        #The measuring equipment
        current = 0
        while(current < experiment_iterations):
            run_benchmark(b, current, experiment_iterations, csv_output, statistics)
            current += 1

        bm_utils.save(statistics, csv_output, b.path)
        print("", flush=True)
    print('\n', flush=True)


def run_benchmark(benchmark, i, iterations, csv_output, statistics):
    print("\r" + str(i + 1) + " of " + str(iterations), end="", flush=True)
    bm_utils.run(benchmark)
    results = bm_utils.collect_results(bm_utils.RESULT_FILE_PATH)
    bm_utils.handle_results(results, benchmark.path, csv_output, statistics)
