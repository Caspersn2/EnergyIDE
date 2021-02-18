# Instructions

This tool can be used to determine the number of CIL instructions will be executed for a given method within the CIL code.

## How to use

The tool has a primary file called `main.py` which is used to start the counting. The simple process is described below, for more information run the following command:

```bash
python main.py -h
```

### Counting all of the instructions (WIP)

If the main script is executed without any extra parameters, outside the required, it will 'simulate' the entire program and return a list of instructions from each of the functions. The command is as follows:

```bash
python main.py -f file.il
```

### Counting instructions for a specific method

If one only wants to know the CIL instructions for a single method, this can be done by specifying it using the `-m` or `--method` and then the name of the method. Remember that the name has to be precise, also including the input parameters. If the name does not match, the complete list of available methods will be printed (This can also be achieved by calling with the `-l`, `--list` - Which incidentally will stop the applications from running anything, even if `-m` is specified). An example of this can be seen below:

```bash
python main.py -f file.il -m 'generateNumber()'
```

> **WARNING:** if the method takes any input, then `-m` cannot be used, because it make random guesses about the input parameters.

## Work list

- [x] Implement Call functionality, to follow calls in the CIL code
- [ ] Fix unimplemented instructions
- [ ] Implement option to select between (Simple Counting and Simulation)
- [ ] Make the simulation work with multiple classes (Call, results)
