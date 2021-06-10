# Instructions

This tool can be used to determine the number of CIL instructions that will be executed for a given method within the CIL code.

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

> **WARNING:** if the method takes any input, then `-m` cannot be used, because it can't make random guesses about the input parameters.

## Regression testing

Since any small change can have a large impact on the internals of the simulation engine, the package include a testSet for the purpose of regression testing. This way, one can quickly identify if some part of the engine has unwanted consequences. In order to execute said regression tests, be sure to have a folder named 'testSets' and run the following command:

```bash
python regression_testing.py
```

## Work list

- [x] Implement Call functionality, to follow calls in the CIL code
- [x] Implement option to select between (Simple Counting and Simulation)
- [x] Make the simulation work with multiple classes (Call, results)
- [x] Fix stack popping properly when calling another method
- [x] Implement array mutation
- [x] Add functionality to randomize the random values from system calls
- [x] Add option to decompile existing DLL files and count
- [x] Add smarter entrypoint detection by using '.entrypoint'
- [x] Implement Generics and getting generic variables
  - [x] Find generic classes, when initially creating classes (Class generics)
  - [x] Find generic classes, when calling 'newobj'
  - [x] Enable identical function names, different generics
  - [x] Create generic methods, when reading the CIL code (Standalone generics)
  - [x] Call correct version of generic method
  - [x] Update results to show the concrete values for generic calls
- [ ] Implement Delegates and create a custom type for them
- [ ] Find out how to call third part libraries / system libraries
- [ ] Add functionality to randomize input parameters for specificed method
- [ ] Fix unimplemented instructions (ongoing)
