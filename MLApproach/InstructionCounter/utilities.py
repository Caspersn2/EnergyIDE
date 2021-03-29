from method_factory import create_method
import re
from collections import Counter
from objects.position import position
from objects.container_factory import create_class_container


class_keywords = '(?:private|public|assembly|interface|sequential|abstract|protected|auto|ansi|nested|sealed|serializable|beforefieldinit)'
method_instruction = r'\.method'
class_name = fr'\.class\s(?:{class_keywords}\s)+(.+)\s+'
locals_instruction = r'\.locals init'
locals_index = r'\[[0-9]+\]'
variable_name = r'\.?\'?[a-zA-Z<>\[][ _0-9a-zA-Z<>/\.\[\]`]*\'?'
primitive_type = r'((?:object|float32|float64|bool|int16|int32|uint32|uint16|uint64|int64|int|string|char|void)\[?\]?)'
library_returntype = fr'\[{variable_name}\]{variable_name}'
generic_type = '(!!?[_a-zA-Z<>0-9]+)'
class_type = r'(?:class\s)((?:\S+\s?)+)'
primitive_method_name = fr'{primitive_type}\s({variable_name})\s\((.|\s)*?\)'
library_method_name = fr'{library_returntype}\s({variable_name})\s\((.|\s)*?\)'
generic_method_name = fr'{generic_type}\s({variable_name})\s\((.|\s)*?\)'
method_name = fr'{generic_method_name}|{primitive_method_name}|{library_method_name}'
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
    method_result = ''
    parameters = []
    parameter_names = []
    start = re.match(variable_name, name)
    if start:
        matches = re.finditer(f'(?P<parameter>{variable_type}|{library_returntype}|{generic_type})\s(?P<var>{variable_name}),?', name[start.end(0)+1:-1])
        
        if "'" in start.group():
            method_result += start.group() + "("
        else:
            method_result += start.group()[:-1] + "("

        for m in matches:
            parameters.append(m.group('parameter'))
            parameter_names.append(m.group('var'))
        method_result += ', '.join(parameters) + ')'
    return method_result, parameter_names


# Returns method objects based
def get_by_method(text, cls):
    methods = []
    matches = re.finditer(method_instruction, text)
    for match in matches:
        start = match.start()
        method_match = re.search(method_name, text[start:])
        if method_match:
            tmp_name = method_match.group().strip().replace('class ', '')
            return_type, tmp_name = tmp_name.split(' ', 1)
            tmp_name = tmp_name.replace('\n','').replace('\t', '')
            name, parameter_names = remove_parameter_names(tmp_name)
            name = f'{cls.name}::{name}'
            end = count_by_set({'{': 0, '}': 0}, text[start:])
            prototype = text[start:start + method_match.end()]
            new_method = create_method(name, cls, prototype, return_type, parameter_names, text[start:start + end])
            methods.append(new_method)
    return methods


def get_parent_class(classes, start_index):
    best_candidate = None
    for cls in classes.values():
        if cls.contains(start_index):
            best_candidate = cls
    return best_candidate


def get_superclass(text):
    end_declaration = str.find(text, '{')
    declaration = text[:end_declaration] 
    return declaration.split('extends')[-1].strip()


def get_keywords(text, name):
    end = str.find(text, '{')
    keyword_space = text[:end]
    return keyword_space.split(name)[0].split()


def get_all_classes(text):
    classes = {}
    matches = re.finditer(class_name, text)
    for match in matches:
        start = match.start()
        name = match.groups()[0].strip()
        if 'nested' in match.group():
            parent = get_parent_class(classes, start)
            name = parent.name + "/" + name
        end = count_by_set({'{': 0, '}': 0}, text[start:])
        class_text = text[start:start + end]
        super_class = get_superclass(class_text)
        keywords = get_keywords(class_text, name)
        classes[name] = create_class_container(name, class_text, position(start, end), super_class, keywords)
    return classes


def get_local_stack(text):
    local_stack = {}
    match = re.search(locals_instruction, text)
    if match:
        start = match.end()
        end = count_by_set({'(': 0, ')': 0}, text[start:]) + start
        matches = re.finditer(rf'(?:{locals_index})\s(?:{generic_type}|{primitive_type}|{class_type})', text[start:end])
        for m in matches:
            put_variable_in_set(local_stack, m)
        return local_stack


def put_variable_in_set(locals, m):
    name = len(locals.keys())
    datatype = ''
    elements = list(filter(None, m.groups()))

    data = m.group().strip()
    if elements:
        data = ' '.join(elements).strip()

    datatype = data;
    if data[-1] in [',']:
        datatype = data[:-1]

    locals[name] = datatype


def get_arguments(text):
    arguments = {}
    arg_list = re.match(r'.+\((.+)\)', text)
    if arg_list:
        matches = re.finditer(rf'{generic_type}|{variable_type}|{library_returntype}|{primitive_type}', arg_list.groups()[0])
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


def is_library_call(value):
    if re.search(r'\[|\]', value):
        return True
    else:
        return False


def is_generic(value):
    if re.search(r'`[0-9]+<', value):
        return True
    else:
        return False


def get_args_between(value, start_delimiter, stop_delimiter):
    from_start = value.split(start_delimiter)[-1]
    to_end = from_start.split(stop_delimiter)[0]
    args_list = to_end.split(',')
    return [x.strip() for x in args_list] if args_list and args_list != [''] else []