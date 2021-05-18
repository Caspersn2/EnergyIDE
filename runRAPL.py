import argparse
import os
from run.benchmark_program import all_benchmarks
import run.csv_benchmark_parser as csv_benchmark_parser
from datetime import datetime
import run.email_service as es
import run.cochran as cochran
import run.sestoft as sestoft
from run.benchmark_program import C_Sharp_Program

parser = argparse.ArgumentParser()
benchmarks_path = "MLApproach/correct_benchmarks"
all_paradigms = ["functional", "oop", "procedural"]
all_languages = ["c#", "f#"]

#Used to validate benchmark folders
class readable_dir(argparse.Action):
    def __call__(self, parser, namespace, values, option_string=None):
        for prospective_dir in values:
            if not os.path.isdir(prospective_dir):
                raise argparse.ArgumentTypeError("readable_dir:{0} is not a valid path".format(prospective_dir))
            if os.access(prospective_dir, os.R_OK):
                dirs = getattr(namespace, self.dest)
                if dirs: 
                    dirs.append(prospective_dir) 
                else:
                    dirs = [prospective_dir]
                setattr(namespace, self.dest, dirs)
            else:
                raise argparse.ArgumentTypeError("readable_dir:{0} is not a readable dir".format(prospective_dir))


#Goes through benchmark folders to find benchmarks
def get_benchmark_programs(benchmarks, paradigms, languages):
    benchmark_programs = []
    
    for benchmark_path in benchmarks:
        if 'functional_c#' in benchmark_path or 'functional_f#' in benchmark_path or 'procedural_c#' in benchmark_path or 'procedural_f#' in benchmark_path or 'oop_c#' in benchmark_path or 'oop_f#' in benchmark_path:
            continue
        benchmark_programs.append(C_Sharp_Program(benchmark_path, benchmark_path.split('/')[-1]))

    return benchmark_programs


if __name__ == '__main__':
    parser.add_argument("-n", "--nobuild", action='store_true', help="Skips build step for benchmarks")
    parser.add_argument("-p", "--paradigm", choices=all_paradigms, help="Run only benchmarks for paradigm")
    parser.add_argument("-l", "--language", choices=all_languages, help="Run only benchmarks for language")
    parser.add_argument("-o", "--output", default="results.csv", help="Output csv file for results. Default is results.csv")
    parser.add_argument("-i", "--iterations", default=10, type=int, help="Number of iterations for each benchmark")
    parser.add_argument("-d", "--dependant", action='store_true', help="Run all iterations within benchmark program")
    parser.add_argument("-t", "--time-limit", type=int, help="Number of seconds to continousely run each benchmark")
    parser.add_argument("--sestoft-approach", action='store_true', help="Old approach to run specified number of runs or of a specified amount of time")

    mx_group = parser.add_mutually_exclusive_group()
    mx_group.add_argument("-b", "--benchmarks", action=readable_dir, nargs='+', help="Run only specified benchmarks")
    mx_group.add_argument("-c", "--csv", type=argparse.FileType('r'), help="CSV configuration file")

    email_group = parser.add_mutually_exclusive_group()
    email_group.add_argument("-e", "--send-results-email", type=str, help="Send email containing statistical results")
    email_group.add_argument("-e+", "--send-full-results-emails", type=str, help="Send email containing statistical results and seperate email containing raw results")
    
    args = parser.parse_args()

    benchmark_programs = []
    paradigms = []
    languages = []

    #If no paradigm is given, then all paradigms are to be run
    if args.paradigm:
        paradigms = [args.paradigm]
    else:
        paradigms = all_paradigms

    #If no language is given, then all languages are to be run
    if args.language:
        languages = [args.language]
    else:
        languages = all_languages


    skip_build      = args.nobuild
    output_file     = "[{0}]{1}".format(datetime.now().isoformat(),args.output)
    iterations      = args.iterations
    time_limit      = args.time_limit
    email           = args.send_results_email if args.send_results_email else args.send_full_results_emails


    if not args.csv:
        #If no benchmarks are given, all benchmarks are to be run
        benchmarks = args.benchmarks if args.benchmarks else [f.path for f in os.scandir(benchmarks_path) if f.is_dir()]
        benchmark_programs = get_benchmark_programs(benchmarks, paradigms, languages)
    
    else:
        benchmark_programs = csv_benchmark_parser.parse_open_csv(args.csv)
        args.csv.close()

    if args.sestoft_approach:
        sestoft.perform_benchmarks(benchmark_programs, iterations, output_file)
    else:
        cochran.perform_benchmarks(benchmark_programs, output_file, args.dependant, time_limit)

    if(email is not None):
        es.send_results(email, output_file)

        if(args.send_full_results_emails):
            es.send_raw_results(email, output_file)
