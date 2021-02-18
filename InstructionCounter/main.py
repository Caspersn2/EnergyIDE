import argparse
import yamlclass
import utilities


def write_to_file(method_name, results, output):
    with open(output, 'w+') as data_file:
        data_file.write(method_name + '\n')
        for (k, v) in results.items():
            data_file.write(f'{k},{v}\n')
        data_file.write('\n')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', type=argparse.FileType('r'), help='Counts all of the instructions used', required=True)
    parser.add_argument('-m', '--method', type=str, help='Countes the instructions for the specific method')
    parser.add_argument('-e', '--entry', default='Main(string[] args)', help='If "Main(string[] args)" is not the default entry method please specify with this command')
    parser.add_argument('-l', '--list', action='store_true', help='Will print a list of available methods')
    parser.add_argument('-o', '--output', type=str, default='results.csv', help='The name of the output file (Default = "results.csv")')
    args = parser.parse_args()

    ## Read the il file
    text = args.file.read()
    
    ## Split all code into methods
    instructionset = yamlclass.load('instructions.yaml')
    methods = utilities.get_by_method(text)
    if args.list:
        print(f'The available methods are as follows: {methods.keys()}')
    else:
        if args.method:
            found = False
            if args.method in methods:
                found = True
                m = methods[args.method]
                if m.arguments:
                    raise Exception(f"The chosen method requires arguments, and can therefore not be counted by itself")
                res = m.get_instructions(instructionset)
                write_to_file(m.name, res, args.output)
            if not found:
                raise Exception(f"The specified method '{args.method}' was not found. Please look at the available options: {methods.keys()}")
        else:
            if args.entry in methods:
                entry = methods[args.entry]
                res = entry.get_instructions(instructionset)
                write_to_file(entry.name, res, args.output)
            else:
                raise Exception(f"The default method: '{args.entry}' does not exist in the .il file, please specify another method using `-e` or `--entry`")