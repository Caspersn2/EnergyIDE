from collections import Counter

# Read all CIL instructions into list
filename = 'listOfCILInstructions.txt'
with open(filename) as f:
    cil_instructions = f.readlines()

cil_instructions = [x.strip() for x in cil_instructions] 

# Read cil code
filename = 'test.il'
with open(filename) as f:
    cil_code = f.read().split() # Split by whitespace
# Keep only CIL instructions
cil_code = [x for x in cil_code if x in cil_instructions]

# Count all occuronces of CIL instructions
instructions_count = Counter(cil_code)