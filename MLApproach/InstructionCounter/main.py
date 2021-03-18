import argparse
from simulation_exception import simulation_exception
from statemachine import state_machine
import utilities
import subprocess
import result


def execute(counting_type, method, state_machine):
    if counting_type == 'Simple':
        res = utilities.simple_count(method.text)
        result.add_results(res, method.name)
    elif counting_type == 'Simulation' and method.arguments:
        raise simulation_exception(f"The chosen method requires arguments, and can therefore not be counted by itself")
    else:
        state_machine.simulate(method, None)


def count_instructions(args, text):
    ## Split all code into methods
    classes = utilities.get_all_classes(text)
    methods = get_methods_from_classes(classes)
    state = state_machine(classes, methods)

    if args.list:
        print_methods(methods)
        exit()

    if args.method:
        if args.method in methods:
            method = methods[args.method]
            execute(args.counting_method, method, state)
        else:
            raise simulation_exception(f"The specified method '{args.method}' was not found. Please look at the available options: {methods.keys()}")
    else:
        if args.entry not in methods.keys() and args.counting_method == 'Simulation':
            raise simulation_exception(f"The default method: '{args.entry}' does not exist in the .il file, please specify another method using `-e` or `--entry`")

        for k, method in methods.items():
            if args.counting_method == 'Simple' or args.entry in k:
                execute(args.counting_method, method, state)
    
    result.output(args.output)
    return result.get_results()


def get_methods_from_classes(classes):
    methods = {}
    for _, cls in classes.items():
        for m in cls.methods:
            methods[m.name] = m
    return methods


def print_methods(methods):
    print(f'The available methods are as follows:')
    keys = [f'{x}' for x in methods.keys()]
    for key in keys:
        print(key)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', type=argparse.FileType('r'), help='Counts all of the instructions used', required=True)
    parser.add_argument('-c', '--counting-method', choices=['Simple', 'Simulation'], help='Determines the method to use to count the CIL instructions.\n"Simple": counts all of the CIL instructions used for a given method / program.\n"Simulation": Simulates the program, and counts the executed CIL instructions')
    parser.add_argument('-m', '--method', type=str, help='Countes the instructions for the specific method')
    parser.add_argument('-e', '--entry', default='Main(string[])', help='If "Main(string[])" is not the default entry method please specify with this command')
    parser.add_argument('-l', '--list', action='store_true', help='Will print a list of available methods')
    parser.add_argument('-a', '--assembly', action='store_true', help='Will dissamble your .dll file for you')
    parser.add_argument('-o', '--output', type=str, help='The name of the output file')
    parser.add_argument('-d', '--debug', action='store_true', help='Prints all of the args and their name after parsing')
    parser.add_argument('-i', '--instruction-set', type=str, default='instructions.yaml', help='Path to the file containing all of the behavior of CIL instructions')
    args = parser.parse_args()

    if args.debug:
        print(args)

    ## Read the il file
    if args.assembly:
        name = args.file.name.split('/')[-1].split('.')[0]
        try:
            subprocess.call(
            f'dotnet-ildasm {args.file.name} -o {name}.il', shell=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL)
            text = open(f'{name}.il').read()
        except subprocess.CalledProcessError as e:
            raise simulation_exception("Could not dissamble file").with_traceback(e.__traceback__)
    else:
        text = args.file.read()

    count_instructions(args, text)