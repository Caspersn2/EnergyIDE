import argparse
from statemachine import state_machine
import yamlclass
import utilities
import output
import subprocess


def main(args):
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
        except:
            raise Exception("Could not dissamble file")
    else:
        text = args.file.read()
    
    ## Split all code into methods
    instructionset = yamlclass.load('instructions.yaml')
    classes = utilities.get_all_classes(text)
    methods = {}
    for _, cls in classes.items():
        for m in cls.methods:
            methods[m.name] = m

    state_machine.available_instructions = instructionset
    state_machine.available_classes = classes
    state_machine.output = args.output

    if args.list:
        print(f'The available methods are as follows:')
        keys = [f'{x}' for x in methods.keys()]
        for key in keys:
            print(key)
    else:
        if args.method:
            if args.method in methods:
                method = methods[args.method]
                if method.arguments and args.counting_method == 'Simulation':
                    raise Exception(f"The chosen method requires arguments, and can therefore not be counted by itself")
                
                res = None
                if args.counting_method == 'Simple':
                    res = utilities.simple_count(method.text)
                else:
                   res, _ = method.get_instructions(methods, None)

                output.write_to_file(method.name, res, args.output)
            else:
                raise Exception(f"The specified method '{args.method}' was not found. Please look at the available options: {methods.keys()}")
        else:
            found = False
            for k, method in methods.items():
                res = None
                if args.counting_method == 'Simple':
                    res = utilities.simple_count(method.text)
                    output.write_to_file(method.name, res, args.output)
                else:
                    if args.entry in k:
                        found = True
                        res, _ = method.get_instructions(methods, None)
                        output.write_to_file(method.name, res, args.output)
            if args.counting_method == 'Simulation' and not found:
                raise Exception(f"The default method: '{args.entry}' does not exist in the .il file, please specify another method using `-e` or `--entry`")


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', type=argparse.FileType('r'), help='Counts all of the instructions used', required=True)
    parser.add_argument('-c', '--counting-method', choices=['Simple', 'Simulation'], help='Determines the method to use to count the CIL instructions.\n"Simple": counts all of the CIL instructions used for a given method / program.\n"Simulation": Simulates the program, and counts the executed CIL instructions')
    parser.add_argument('-m', '--method', type=str, help='Countes the instructions for the specific method')
    parser.add_argument('-e', '--entry', default='Main(string[])', help='If "Main(string[])" is not the default entry method please specify with this command')
    parser.add_argument('-l', '--list', action='store_true', help='Will print a list of available methods')
    parser.add_argument('-a', '--assembly', action='store_true', help='Will dissamble your .dll file for you')
    parser.add_argument('-o', '--output', type=str, default='results.csv', help='The name of the output file (Default = "results.csv")')
    parser.add_argument('-d', '--debug', action='store_true', help='Prints all of the args and their name after parsing')
    args = parser.parse_args()
    main(args)