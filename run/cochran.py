import math
from . import benchmark_utils as bm_utils
import subprocess

SAMPLE_ITERATIONS = 1000

# Executes the list of benchmarks and saves results to ouput csv file
def perform_benchmarks(benchmark_programs, output_file, is_dependant, time_limit):
    stats, csv_output = bm_utils.setup(output_file)
    benchmark_count = len(benchmark_programs)

    for index, current_benchmark in enumerate(benchmark_programs):
        print("Performing benchmark " + str(index + 1) + " of " + str(benchmark_count), flush=True)
        print(current_benchmark.path, flush=True)

        # Build benchmark
        try:
            subprocess.run(current_benchmark.get_build_command(),
                        shell=True, check=True, stdout=subprocess.DEVNULL)
        except:
            print("Could not build " + current_benchmark.path)
            continue
        stats.clear()

        # Run random sample
        try:
            run_benchmark(current_benchmark, SAMPLE_ITERATIONS, is_dependant, stats, csv_output)
        except:
            print("Could not run " + current_benchmark.path)
            continue
        num_runs = math.ceil(compute_sample_size(stats))

        # Maybe conduct additional runs
        if not is_enough_runs(num_runs, stats, SAMPLE_ITERATIONS):
            print("Performing ", num_runs - SAMPLE_ITERATIONS,
                  " addtitional runs to achive the desired statistical error", flush=True)
            run_benchmark(current_benchmark, num_runs - SAMPLE_ITERATIONS, is_dependant, stats, csv_output, time_limit)
        bm_utils.save(stats, csv_output, current_benchmark.path)


def is_enough_runs(num_runs, stats, iterations):
    if iterations >= num_runs:
        return True
    else:
        execute = stats.execution_time.error_percent
        memory = stats.ram.error_percent
        package = stats.package.error_percent
        return all(val <= 0.005 for val in [execute, memory, package])


def run_benchmark(benchmark, iterations, is_depentant, stats, csv_output, time_limit = None):
    if not is_depentant:
        time = 0
        for i in range(iterations):
            print("\r" + str(i + 1) + " of " + str(iterations), end="", flush=True)
            bm_utils.run(benchmark)
            results = bm_utils.collect_results(bm_utils.RESULT_FILE_PATH)
            res = bm_utils.handle_results(results, benchmark.path, csv_output, stats)
            time += sum([ x.duration for x in res ]) / 1_000

            if time_limit and time >= time_limit:
                print("\nEnding benchmark due to time constraints")
                break

        print("", flush=True)
    else:
        bm_utils.run(benchmark, [str(iterations)])
        results = bm_utils.collect_results(bm_utils.RESULT_FILE_PATH)
        bm_utils.handle_results(results, benchmark.path, csv_output, stats)


# This is the Cochran formula
def compute_sample_size(stats):
    stats.compute()
    num_runs = []
    z_score = 1.96  # For 95% confidence
    for metric in [stats.execution_time, stats.package, stats.ram]:
        top = z_score * metric.sd
        error = metric.mean * 0.005
        num_runs.append((top / error)**2)
    return max(num_runs)
