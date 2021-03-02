from collections import Counter
import subprocess
import os
import unittest

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
        subprocess.run(f'python3 main.py -f {il_file} -c Simple', shell=True)
    else:
        subprocess.run(f'python3 main.py -f {il_file}', shell=True)

    # Assert Simple
    res = count_occurrences('results.csv')
    truth = count_occurrences(correct)
    return res, truth


class TestCounting(unittest.TestCase):
    def tearDown(self):
        if os.path.isfile('results.csv'):
            os.remove('results.csv')

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


if __name__ == '__main__':
    unittest.main()
