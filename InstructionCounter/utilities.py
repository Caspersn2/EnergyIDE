import re
from method import method

method_instruction = r'\.method'
method_name = r'\s(\S+?)\(.*?\)\s'
locals_instruction = r'\.locals init'
variable_name = r'\.?[a-zA-Z][_0-9a-zA-Z]*'
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


def remove_parameter_names(name):
    method_name = ''
    parameters = []
    start = re.match(variable_name, name)
    matches = re.finditer(f'({variable_type})\s{variable_name},?', name[start.end(0)+1:-1])
    method_name += start.group() + "("
    for m in matches:
        parameters.append(m.groups()[0])
    method_name += ', '.join(parameters) + ')'
    return method_name


# Returns method objects based
def get_by_method(text):
    methods = {}
    matches = re.finditer(method_instruction, text)
    for match in matches:
        start = match.start()
        tmp_name = re.search(method_name, text[start:]).group().strip()
        name = remove_parameter_names(tmp_name)
        end = count_by_set({'{': 0, '}': 0}, text[start:])
        methods[name] = method(name, text[start: start + end])
    return methods


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
    data = m.group().split(' ')
    elements = list(filter(None, data))
    if len(elements) == 2:
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