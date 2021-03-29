from simulation_exception import simulation_exception
from objects.class_fields import get_fields
import utilities
from variable import variable


class class_container():
    def __init__(self, name, text, pos):
        self.name = name
        self.text = text
        self.position = pos
        fields = get_fields(text, pos.start, len(name))
        self.fields = {key: fields[key] for key, value in fields.items() if not value.is_static}
        self.static_fields = {key: fields[key] for key, value in fields.items() if value.is_static}
        self.methods = None
        self.is_generic = False
        self.is_interface = False
        self.state = {}
        self.init_state()

    
    def load_methods(self):
        self.methods = utilities.get_by_method(self.text, self)


    def get_method(self, class_container, method_name):
        method = self.find_method(method_name)
        if class_container.is_interface and not method:
            raise NotImplementedError('Super class method search is not implemented yet')
        else:
            return method


    def find_method(self, method_name):
        for method in self.methods:
            simple_name = method.name.split('::')[-1]
            if method_name == simple_name:
                return method
        return None
        
    
    def contains(self, pos):
        return self.position.contains(pos)

    
    def get_name(self):
        return self.name


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


    def __repr__(self) -> str:
        return self.name