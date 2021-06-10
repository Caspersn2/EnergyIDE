from collections import Counter
import subprocess
import os
import unittest

FILE_STORAGE = 'results.csv'
CIL_INSTRUCTIONS = [x.strip()
                    for x in open('CIL_Instructions.txt').readlines()]

def count_occurrences(benchmark):
    # Read cil code
    with open(benchmark) as f:
        cil_code = f.read().replace(',', ' ').split()  # Split by whitespace
    # Keep only CIL instructions
    cil_code = [x for x in cil_code if x in CIL_INSTRUCTIONS]

    # Count all occuronces of CIL instructions
    return Counter(cil_code)


def helper(il_file, correct, is_simple):
    # Act Simple
    if is_simple:
        subprocess.run(f'python3 main.py -f {il_file} -c Simple -o results.csv', shell=True)
    else:
        subprocess.run(f'python3 main.py -f {il_file} -o results.csv', shell=True)

    # Assert Simple
    res = count_occurrences(FILE_STORAGE)
    truth = count_occurrences(correct)
    return res, truth


class TestCounting(unittest.TestCase):
    def tearDown(self):
        if os.path.isfile(FILE_STORAGE):
            os.remove(FILE_STORAGE)


    ## Simple Add
    def test_simpleAdd_simple(self):
        res, truth = helper('testSets/simpleAdd.il',
                            'testSets/simpleAddSimple.csv', True)
        self.assertEqual(res, truth)

    def test_simpleAdd_simulation(self):
        res, truth = helper('testSets/simpleAdd.il',
                            'testSets/simpleAddSimulation.csv', False)
        self.assertEqual(res, truth)
    

    ## Multiple Classes
    def test_multipleClasses_simple(self):
        res, truth = helper('testSets/multipleClasses.il',
                            'testSets/multipleClassesSimple.csv', True)
        self.assertEqual(res, truth)

    def test_multipleClasses_simulation(self):
        res, truth = helper('testSets/multipleClasses.il',
                            'testSets/multipleClassesSimulation.csv', False)
        self.assertEqual(res, truth)


    ## 100 Doors
    def test_100Doors_simple(self):
        res, truth = helper('testSets/100Doors.il',
                            'testSets/100DoorsSimple.csv', True)
        self.assertEqual(res, truth)

    def test_100Doors_simulation(self):
        res, truth = helper('testSets/100Doors.il',
                            'testSets/100DoorsSimulation.csv', False)
        self.assertEqual(res, truth)


    ## Conditional Test
    def test_conditionalTest_simple(self):
        res, truth = helper('testSets/conditional_test.il',
                            'testSets/conditional_testSimple.csv', True)
        self.assertEqual(res, truth)

    def test_conditionalTest_simulation(self):
        res, truth = helper('testSets/conditional_test.il',
                            'testSets/conditional_testSimulation.csv', False)
        self.assertEqual(res, truth)


    ## Generics with standalone Method
    def test_genericMethodExample_simple(self):
        res, truth = helper('testSets/simpleGenericsMethodExample.il',
                            'testSets/simpleGenericsMethodExampleSimple.csv', True)
        self.assertEqual(res, truth)

    def test_genericMethodExample_simulation(self):
        res, truth = helper('testSets/simpleGenericsMethodExample.il',
                            'testSets/simpleGenericsMethodExampleSimulation.csv', False)
        self.assertEqual(res, truth)


    ## Generics with generic Class
    def test_genericClassExample_simulation(self):
        res, truth = helper('testSets/simpleGenericsClassExample.il',
                            'testSets/simpleGenericsClassExampleSimulation.csv', False)
        self.assertEqual(res, truth)

    def test_genericClassExample_simple(self):
        res, truth = helper('testSets/simpleGenericsClassExample.il',
                            'testSets/simpleGenericsClassExampleSimple.csv', True)
        self.assertEqual(res, truth)


    ## Simple Interface tests
    def test_simpleInterface_simulation(self):
        res, truth = helper('testSets/simple_interface.il',
                            'testSets/simple_interfaceSimulation.csv', False)
        self.assertEqual(res, truth)

    def test_simpleInterface_simple(self):
        res, truth = helper('testSets/simple_interface.il',
                            'testSets/simple_interfaceSimple.csv', True)
        self.assertEqual(res, truth)


if __name__ == '__main__':
    unittest.main()
