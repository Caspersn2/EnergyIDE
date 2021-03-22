import re
from collections import Counter
from method import method
from class_obj import class_obj

method_instruction = r'\.method'
class_name = r'\.class.+\s(.+)\s+extends'
locals_instruction = r'\.locals init'
locals_index = r'\[[0-9]+\]'
variable_name = r'\.?\'?[a-zA-Z<>][_0-9a-zA-Z<>\.]*\'?'
primitive_type = r'(float32|float64|bool|int16|int32|int64|string|char|void)\[?\]?'
class_type = r'(class)\s(\S+)'
method_name = fr'{primitive_type}\s({variable_name})\s\((.|\s)*?\)'
variable_type = rf'{variable_name}\[?\]?'
instance_keyword = r'instance'


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


def remove_parameter_names(name):
    method_name = ''
    parameters = []
    start = re.match(variable_name, name)
    if start:
        matches = re.finditer(f'({variable_type})\s{variable_name},?', name[start.end(0)+1:-1])
        method_name += start.group() + "("
        for m in matches:
            parameters.append(m.groups()[0])
        method_name += ', '.join(parameters) + ')'
    return method_name


# Returns method objects based
def get_by_method(text, cls):
    methods = []
    matches = re.finditer(method_instruction, text)
    for match in matches:
        start = match.start()
        method_match = re.search(method_name, text[start:])
        tmp_name = method_match.group().strip()
        return_type, tmp_name = tmp_name.split(' ', 1)
        tmp_name = tmp_name.replace('\n','').replace('\t', '')
        name = remove_parameter_names(tmp_name)
        name = f'{cls.name}::{name}'
        end = count_by_set({'{': 0, '}': 0}, text[start:])

        # This is quite hardcoded
        is_instance = True if re.search(instance_keyword, text[start:start + method_match.end()]) else False
        methods.append(method(name, cls, is_instance, return_type, text[start:start + end]))
    return methods


def get_all_classes(text):
    classes = {}
    matches = re.finditer(class_name, text)
    for match in matches:
        start = match.start()
        name = match.groups()[0].strip()
        end = count_by_set({'{': 0, '}': 0}, text[start:])
        classes[name] = class_obj(name, text[start:start + end])
    return classes


def get_local_stack(text):
    locals = {}
    match = re.search(locals_instruction, text)
    if match:
        start = match.end()
        end = count_by_set({'(': 0, ')': 0}, text[start:]) + start
        matches = re.finditer(rf'({locals_index})\s({primitive_type}|{class_type})', text[start:end])
        for m in matches:
            put_variable_in_set(locals, m, flip=True)
        return locals


def put_variable_in_set(locals, m, flip = False):
    name = len(locals.keys())
    datatype = None
    data = m.group().split(' ')
    cleaned = list(filter(lambda x: x != 'class', data))
    elements = list(filter(None, cleaned))
    if len(elements) == 2:
        if flip:
            name, datatype = elements
            name = name.replace('[', '').replace(']', '')
        else:
            datatype, name = elements
    else:
        datatype = elements[0]
    locals[name] = datatype


def get_arguments(text):
    arguments = {}
    arg_list = re.match(r'.+\((.+)\)', text)
    if arg_list:
        matches = re.finditer(rf'{variable_type}', arg_list.groups()[0])
        for m in matches:
            put_variable_in_set(arguments, m)
    return arguments


def load_cil():
    instructions = open('CIL_Instructions.txt').readlines()
    return [x.strip() for x in instructions]


def simple_count(text):
    cil_instructions = load_cil()
    joined = ' '.join(text).split()
    res = [x for x in joined if x in cil_instructions]
    return Counter(res)


def remove_library_names(text):
    return re.sub(r'\[System\..+\]', '', text)