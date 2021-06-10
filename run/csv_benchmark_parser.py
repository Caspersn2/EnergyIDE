from .benchmark_program import Custom_Program

def parse_open_csv(csv_file):
    """
    Takes an 'open' csv file and converts the input to instances of Custom Program\n
    CSV file should consist of columns `build_cmd` and `run_cmd`
    """
    programs = []
    for l in csv_file.readlines()[1:]:
        build, run = l.split(";")
        path = run.split()[0]
        prog = Custom_Program(path, build, run)
        programs.append(prog)
    return programs
