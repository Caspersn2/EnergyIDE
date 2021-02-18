import re
from method import method
from instruction import instruction

method_instruction = r'\.method'
method_name = r'\s(\S+?)\(.*?\)\s'
instruction_match = r'\s+(IL_[0-9a-f]+):\s(.+)'
locals_instruction = r'\.locals init'
variable_name = r'[a-zA-Z][_0-9a-zA-Z]*'
variable_type = rf'{variable_name}\[?\]?'


# Assert that all values in the set have the same value
def all_equal(search_set):
    values = [v for (k,v) in search_set.items()]
    return values[0] and all([x == values[0] for x in values])


# Counts all occurences of the elements in the input set (Searches the text input)
def count_by_set(search_set, text):
    for index, c in enumerate(text):
        if all_equal(search_set):
            return index
        if c in search_set:
            search_set[c] += 1


# Returns method objects based
def get_by_method(text):
    methods = []
    matches = re.finditer(method_instruction, text)
    for match in matches:
        start = match.start()
        name = re.search(method_name, text[start:]).group().strip()
        end = count_by_set({'{': 0, '}': 0}, text[start:])
        methods.append(method(name, text[start: start + end]))
    return methods


# Returns all instructions from a (List) of text. (Split at newlines)
def get_all_instructions(text):
    instructions = {}
    for line in text:
        match = re.match(instruction_match, line)
        if match:
            name, data = match.groups()
            instr = instruction.create(data)
            instructions[name] = instr
    return instructions

def get_local_stack(text):
    locals = {}
    match = re.search(locals_instruction, text)
    if match:
        start = match.end()
        end = count_by_set({'(': 0, ')': 0}, text[start:]) + start

        matches = re.finditer(rf'({variable_type})\s({variable_name})|\[[0-9]+\]\s({variable_type})', text[start:end])
        for m in matches:
            put_variable_in_set(locals, m)
        return locals

def put_variable_in_set(locals, m):
    name = len(locals.keys())
    datatype = None
    elements = list(filter(None, m.groups()))
    if len(elements) == 2:
        datatype, name = elements
    else:
        datatype = elements
    locals[name] = datatype

def get_arguments(text):
    arguments = {}
    matches = re.finditer(rf'({variable_type})\s({variable_name})', text)
    for m in matches:
        put_variable_in_set(arguments, m)
    return arguments