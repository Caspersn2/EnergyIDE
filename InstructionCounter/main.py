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
    parser.add_argument('-l', '--list', action='store_true', help='Will print a list of available methods')
    parser.add_argument('-o', '--output', type=str, default='results.csv', help='The name of the output file (Default = "results.csv")')
    args = parser.parse_args()

    ## Read the il file
    text = args.file.read()
    
    ## Split all code into methods
    instructions = yamlclass.load('instructions.yaml')
    methods = utilities.get_by_method(text)
    if args.list:
        print(f'The available methods are as follows: {[x.name for x in methods]}')
    else:
        if args.method:
            found = False
            for index, m in enumerate(methods):
                if args.method == m.name:
                    found = True
                    if m.arguments:
                        raise Exception(f"The chosen method requires arguments, and can therefore not be counted by itself")
                    res = methods[index].get_instructions(instructions)
                    write_to_file(m.name, res, args.output)
            if not found:
                raise Exception(f"The specified method '{args.method}' was not found. Please look at the available options: {[x.name for x in methods]}")
        else:
            for m in methods:
                res = m.get_instructions(instructions)
                write_to_file(m.name, res, args.output)