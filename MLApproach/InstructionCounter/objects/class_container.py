from simulation_exception import simulation_exception
from objects.class_fields import get_fields
import utilities
from variable import variable


class class_container():
    def __init__(self, name, text, start):
        self.name = name
        self.text = text
        self.start = start
        fields = get_fields(text, start, len(name))
        self.fields = {key: fields[key] for key, value in fields.items() if not value.is_static}
        self.static_fields = {key: fields[key] for key, value in fields.items() if value.is_static}
        self.methods = utilities.get_by_method(text, self)
        self.is_generic = False
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
