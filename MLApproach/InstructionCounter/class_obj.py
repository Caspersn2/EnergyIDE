import re
from simulation_exception import simulation_exception
import utilities
from variable import variable


field_instruction = r'\.field.+'


class field():
    def __init__(self, name, datatype, is_static) -> None:
        self.name = name
        self.datatype = datatype
        self.is_static = is_static


def get_fields(text, start, length):
    fields = {}
    total_length = start + length
    nested_starts = re.search(r'\.class', text[total_length:])
    end = len(text)
    if nested_starts:
        end = nested_starts.start() + total_length
    matches = re.finditer(field_instruction, text[:end])
    for match in matches:
        elements = match.group().split()
        is_static = 'static' in elements
        *_, datatype, name = elements
        fields[name] = field(name, datatype, is_static)
    return fields


class class_obj():
    def __init__(self, name, text, start):
        self.name = name
        self.text = text
        self.start = start
        fields = get_fields(text, start, len(name))
        self.fields = {key: fields[key] for key, value in fields.items() if not value.is_static}
        self.static_fields = {key: fields[key] for key, value in fields.items() if value.is_static}
        self.methods = utilities.get_by_method(text, self)
        self.state = {}
        self.init_state()


    def init_state(self):
        if self.fields:
            for k, v in self.fields.items():
                self.state[k] = variable(k, v)


    def set_state(self, state, value):
        if state in self.state:
            self.state[state] = value
        else:
            raise simulation_exception(f'The desired state: "{state}" does not appear in the current object: {self.name}')

    
    def get_state(self, state):
        if state in self.state:
            return self.state[state]
        else:
            raise simulation_exception(f'The desired state: "{state}" does not appear in the current object: {self.name}')