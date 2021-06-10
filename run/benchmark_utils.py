import sys
from . import stats as stat
import subprocess
from .result import Result
from . import csv_utils as cu
from typing import List

RESULT_FILE_PATH = 'tempResults.csv'


def error_print(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)


def run(benchmark, args: List[str] = None) -> None:
    inputArgs = ' '.join(args) if args else ''
    subprocess.run(benchmark.get_run_command() + ' ' + inputArgs, shell=True, check=True)


def collect_results(results_file_path):
    return open(results_file_path, 'r').readlines()[1:]


def handle_results(res: List[str], name, raw_results_csv, stats):
    results = []
    for line in res:
        res = Result(name, line)
        results.append(res)
        stats.add(res)
        raw_results_csv.add(res)

    return results


def setup(output_file):
    stats = stat.Aggregator(output_file)
    csv_output = cu.CSV_Output(output_file)
    return (stats, csv_output)


def save(stats, csv, path):
    stats.compute()
    stats.save(path)
    csv.save()
