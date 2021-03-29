import re
from objects.class_container import class_container
from simulation_exception import simulation_exception
import utilities


class generic_class_container(class_container):
    parameter_amount = r"`([0-9]+)'?<"
    generic_index = r'!([0-9]+)'

    def __init__(self, name, text, pos):
        super().__init__(name, text, pos)
        self.is_generic = True
        self.number_of_parameters = int(self.get_parameter_count())
        self.type_names = ['!' + x for x in utilities.get_args_between(self.name, '<', '>')]
        self.types = {}


    def get_name(self):
        name = self.name
        for k, v in self.types.items():
            name = name.replace(k.replace('!', ''), v)
        return name


    def get_parameter_count(self):
        return re.search(generic_class_container.parameter_amount, self.name).groups()[0]


    def replace_generics(self, method_name):
        new_name = method_name
        generics = re.findall(generic_class_container.generic_index, method_name)
        for gen in generics:
            type_name = self.get_generic(int(gen))
            index = '!' + gen
            new_name = new_name.replace(index, type_name)
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
        concrete_types = utilities.get_args_between(concrete, '<', '>')
        for idx in range(len(concrete_types)):
            self.types[self.type_names[idx]] = concrete_types[idx]