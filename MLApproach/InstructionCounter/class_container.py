import re
from simulation_exception import simulation_exception
import utilities
from variable import variable


class field():
    field_instruction = r'\.field.+'


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
    matches = re.finditer(field.field_instruction, text[:end])
    for match in matches:
        elements = match.group().split()
        is_static = 'static' in elements
        *_, datatype, name = elements
        fields[name] = field(name, datatype, is_static)
    return fields



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



class generic_class_container(class_container):
    parameter_amount = r'`([0-9]+)<'
    generic_index = r'!([0-9]+)'

    def __init__(self, name, text, start):
        super().__init__(name, text, start)
        self.is_generic = True
        self.number_of_parameters = int(self.get_parameter_count())
        self.type_names = self.get_types(self.name)
        self.types = {}


    def get_parameter_count(self):
        return re.search(generic_class_container.parameter_amount, self.name).groups()[0]

    
    def get_types(self, name):
        text = name.split('<')[1].replace('>','')
        return text.split(', ')


    def replace_generics(self, method_name):
        new_name = method_name
        generics = re.findall(generic_class_container.generic_index, method_name)
        for gen in generics:
            type_name = self.get_generic(int(gen))
            index = '!' + gen
            new_type = '!' + type_name
            new_name = new_name.replace(index, new_type)
        return new_name


    def get_generic_method(self, method):
        method_name = method.split('::')[-1]
        generic_method = self.replace_generics(method_name)
        full_name = self.name + '::' + generic_method
        return full_name


    def get_generic(self, key):
        return self.type_names[key]


    def get_type(self, key):
        if self.types:
            idx = re.match(generic_class_container.generic_index, key)
            if idx:
                index = int(idx.groups()[0])
                new_key = list(self.types.keys())[index]
                return self.types[new_key]
            else:
                return self.types[key]
        else:
            raise simulation_exception('The current class has no concrete types, something has gone quite wrong')


    def set_types(self, concrete):
        concrete_types = self.get_types(concrete)
        for idx in range(len(concrete_types)):
            self.types[self.type_names[idx]] = concrete_types[idx]