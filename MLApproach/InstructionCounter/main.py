import argparse
from storage import storage
from simulation_exception import simulation_exception
from statemachine import state_machine
from argument_generator import create_random_argument, convert_argument
from collections import Counter
import Parser
import subprocess
import result
import os


def execute(args, method, state_machine):
    if args.counting_method == 'Simple':
        res = Counter([x.name for x in method.instructions.values()])
        result.add_results(res, method)
    else:
        if method.is_entry:
            state_machine.simulate(method, None)
        else:
            set_args_on_method(args.input, method)
            state_machine.simulate(method, None)


def set_args_on_method(args, method):
    args_list = []
    for idx, param in enumerate(method.parameters):
        if args and idx < len(args):
            value = convert_argument(args[idx], param)
        else:
            value = create_random_argument(param)
        args_list.append(value)
    args_list.reverse()
    method.set_parameters(args_list)


def load_environment(libraries):
    if libraries:
        library_classes = get_library_classes(libraries)
        library_classes = get_all_classes(library_classes)
    return library_classes


def simulate(file, is_assembly, environment={}, method=None, args=[]):
    # GET IL
    text = ''
    if is_assembly:
        text = get_il_from_dll(file)
    else:
        text = open(file, 'r').read()
    
    # SETUP
    classes = Parser.parse_text(text)
    classes = get_all_classes(classes)
    methods, entry = get_methods_and_entry(classes)
    if entry is None and method is None:
        raise simulation_exception('The provided file has no entry method, and no other entry was provided')

    # EXECUTION
    storage_unit = storage({**classes, **environment})
    state = state_machine(storage_unit)
    if entry and not method:
        found_method = methods[entry]
        state.simulate(found_method, None)
    elif method in methods:
        found_method = methods[method]
        set_args_on_method(args, found_method)
        state.simulate(found_method, None)
    else:
        raise simulation_exception(f'The provided method "{method}" was not found in the list of available methods')

    # RESULTS
    res = result.get_results()
    result.clear()
    return res


def count_instructions(args, text):
    ## Split all code into methods
    library_classes = {}
    outerclasses = Parser.parse_text(text)
    classes = get_all_classes(outerclasses)
    if args.library:
        library_classes = get_library_classes(args.library)
        library_classes = get_all_classes(library_classes)
        classes = {**classes, **library_classes}
    methods, entry = get_methods_and_entry(classes)
    storage_unit = storage(classes, library_classes)
    state = state_machine(storage_unit)

    if args.list:
        print_methods(classes)
        exit()
        
    if entry and not args.method:
        args.method = entry
    elif not entry and not args.method:
        raise simulation_exception('No entry was found in the program, please specify one using the "-m" or "--method" command line argument')

    if entry and args.method == entry and args.counting_method == 'Simple':
        for method in methods.values():
            execute(args, method, state)
    else:
        if args.method in methods:
            method = methods[args.method]
            execute(args, method, state)
        else:
            raise simulation_exception(f"The specified method '{args.method}' was not found. Please look at the available options: {methods.keys()}")

    result.output(args.output)
    return result.get_results()


def get_library_classes(file_list):
    classes = {}
    for file in file_list:
        classes = {**classes, **Parser.parse_file(file)}
    return classes


def get_all_classes(outerclasses):
    classes = outerclasses
    for cls in outerclasses.values():
        classes = {**classes, **cls.get_nested()}
    return classes
    

def get_methods_and_entry(classes):
    entry = ''
    methods = {}
    for cls in classes.values():
        for meth in cls.methods.values():
            methods[meth.get_full_name()] = meth
            if meth.is_entry:
                entry = meth.get_full_name()
    return methods, entry



def print_methods(classes):
    print(f'The available methods are as follows:')
    for cls in classes.values():
        for meth in cls.methods.values():
            print(meth.get_full_name())


def get_il_from_dll(file_name):
    file_location = os.path.abspath(file_name)
    subprocess.call(f'ilspycmd {file_location} --ilcode -o cil/', shell=True, 
            stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    file_name = os.path.splitext(os.path.basename(file_location))[0]
    return open(f'cil/{file_name}.il', encoding='utf-8', mode='r').read()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', type=argparse.FileType('r', encoding='utf-8'), help='Counts all of the instructions used', required=True)
    parser.add_argument('-c', '--counting-method', default='Simulation', choices=['Simple', 'Simulation'], help='Determines the method to use to count the CIL instructions.\n"Simple": counts all of the CIL instructions used for a given method / program.\n"Simulation": Simulates the program, and counts the executed CIL instructions')
    parser.add_argument('-m', '--method', type=str, help='Countes the instructions for the specific method')
    parser.add_argument('-i', '--input', nargs='*', help='If a method is chosen via. --method, then input variables can be chosen using this argument (Otherwise arguments are generated randomly)')
    parser.add_argument('-l', '--list', action='store_true', help='Will print a list of available methods')
    parser.add_argument('-a', '--assembly', action='store_true', help='Will dissamble your .dll file for you')
    parser.add_argument('-o', '--output', type=str, help='The name of the output file')
    parser.add_argument('--library', type=str, nargs='+', help='Names the library files which should be loaded into the simulator')
    parser.add_argument('-d', '--debug', action='store_true', help='Prints all of the args and their name after parsing')
    args = parser.parse_args()

    if args.debug:
        print(args)

    ## Read the il file
    if args.assembly:
        text = get_il_from_dll(args.file.name)
    else:
        text = args.file.read()

    count_instructions(args, text)
