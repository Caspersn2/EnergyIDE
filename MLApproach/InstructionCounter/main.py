import argparse
from storage import storage
from simulation_exception import simulation_exception
from statemachine import state_machine
import utilities
import subprocess
import result
import os


def execute(counting_type, method, state_machine):
    if counting_type == 'Simple':
        res = utilities.simple_count(method.text)
        result.add_results(res, method.name)
    else:
        if method.is_entry:
            state_machine.simulate(method, None)
        else:
            raise NotImplementedError('The simulation of a method with randomized input parameters is not implemented yet')


def count_instructions(args, text):
    ## Split all code into methods
    classes = utilities.get_all_classes(text)
    entry, methods = get_methods_from_classes(classes)
    storage_unit = storage(classes, methods)
    state = state_machine(storage_unit)

    if args.list:
        print_methods(methods)
        exit()
        
    if entry and not args.method:
        args.method = entry.name
    elif not entry and not args.method:
        raise simulation_exception('No entry was found in the program, please specify one using the "-m" or "--method" command line argument')

    if args.method == entry.name and args.counting_method == 'Simple':
        for method in methods.values():
            execute(args.counting_method, method, state)
    else:
        if args.method in methods:
            method = methods[args.method]
            execute(args.counting_method, method, state)
        else:
            raise simulation_exception(f"The specified method '{args.method}' was not found. Please look at the available options: {methods.keys()}")

    result.output(args.output)
    return result.get_results()


def get_methods_from_classes(classes):
    methods = {}
    entry = None
    for _, cls in classes.items():
        for m in cls.methods:
            if m.is_entry:
                entry = m
            methods[m.name] = m
    return entry, methods


def print_methods(methods):
    print(f'The available methods are as follows:')
    keys = [f'{x}' for x in methods.keys()]
    for key in keys:
        print(key)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', type=argparse.FileType('r'), help='Counts all of the instructions used', required=True)
    parser.add_argument('-c', '--counting-method', default='Simulation', choices=['Simple', 'Simulation'], help='Determines the method to use to count the CIL instructions.\n"Simple": counts all of the CIL instructions used for a given method / program.\n"Simulation": Simulates the program, and counts the executed CIL instructions')
    parser.add_argument('-m', '--method', type=str, help='Countes the instructions for the specific method')
    parser.add_argument('-l', '--list', action='store_true', help='Will print a list of available methods')
    parser.add_argument('-a', '--assembly', action='store_true', help='Will dissamble your .dll file for you')
    parser.add_argument('-o', '--output', type=str, help='The name of the output file')
    parser.add_argument('-d', '--debug', action='store_true', help='Prints all of the args and their name after parsing')
    args = parser.parse_args()

    if args.debug:
        print(args)

    ## Read the il file
    if args.assembly:
        file_location = os.path.abspath(args.file.name)
        subprocess.call(f'ilspycmd {file_location} --ilcode -o cil/', shell=True, 
            stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        file_name = os.path.splitext(os.path.basename(file_location))[0]
        text = open(f'cil/{file_name}.il', 'r').read()
    else:
        text = args.file.read()

    count_instructions(args, text)