import sys
sys.path.append('InstructionCounter')
import argparse
import subprocess
import os
from collections import Counter
from tqdm import tqdm
from InstructionCounter import main


def add_to_csv(benchmark, counts, filename):
    csv_line = []
    csv_line.append(benchmark)
    for instruction in CIL_INSTRUCTIONS:
        csv_line.append(
            str(counts[instruction])) if instruction in counts else csv_line.append('0')

    with open(filename, 'a') as f:
        f.write(','.join(csv_line))
        f.write('\n')


with open('listOfCILInstructions.txt') as f:
    CIL_INSTRUCTIONS = [x.strip() for x in f.readlines()]

base_dir = 'benchmarks'

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-c', '--counting-method', choices=['Simple', 'Simulation'],
                        help='Determines the method to use to count the CIL instructions.\n"Simple": counts all of the CIL instructions used for a given method / program.\n"Simulation": Simulates the program, and counts the executed CIL instructions')
    parser.add_argument('-m', '--method', type=str,
                        help='Countes the instructions for the specific method')
    parser.add_argument('-e', '--entry', default='Main(string[])',
                        help='If "Main(string[])" is not the default entry method please specify with this command')
    parser.add_argument('-l', '--list', action='store_true',
                        help='Will print a list of available methods')
    parser.add_argument('-o', '--output', type=str, default='results.csv',
                        help='The name of the output file (Default = "results.csv")')
    parser.add_argument('-d', '--debug', action='store_true',
                        help='Prints all of the args and their name after parsing')
    parser.add_argument('-i', '--instruction-set', type=str, default='InstructionCounter/instructions.yaml',
                        help='Path to the file containing all of the behavior of CIL instructions')
    args = parser.parse_args()

    could_not_build = []
    filename = ''
    if args.counting_method == 'Simple':
        filename = "CIL_Counts_Simple.csv"
    elif args.counting_method == 'Simulationn':
        filename = "CIL_Counts_Simulation.csv"
    
    # Adds top line to CSV
    with open(filename, 'w+') as f:
        f.write('name,')
        f.write(','.join(CIL_INSTRUCTIONS))
        f.write('\n')

    # Enumerate all benchmarks
    all_benchmarks = os.listdir(base_dir)
    for benchmark in tqdm(all_benchmarks):
        text = open(f'benchmarks/{benchmark}/Program.il').read()

        # Count instructions
        counts = main.count_instructions(args, text)

        # Add to csv (Columns: Benchmark name, instruction1, instruction2 ...)
        add_to_csv(benchmark, counts, filename)
        break
