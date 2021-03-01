import re
import utilities
from variable import variable


field_instruction = r'\.field.+'


def get_fields(text):
    fields = {}
    matches = re.finditer(field_instruction, text)
    for match in matches:
        elements = match.group().split()
        *_, datatype, name = elements
        fields[name] = datatype
    return fields


class class_obj():
    def __init__(self, name, text):
        self.name = name
        self.text = text
        self.fields = get_fields(text)
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
            raise Exception(f'The desired state: "{state}" does not appear in the current object: {self.name}')

    
    def get_state(self, state):
        if state in self.state:
            return self.state[state]
        else:
            raise Exception(f'The desired state: "{state}" does not appear in the current object: {self.name}')