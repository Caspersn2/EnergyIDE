from simulation_exception import simulation_exception
import utilities
import instruction
import copy

# Represents an entire method
class method():
    def __init__(self, name, cls, prototype, return_type, parameter_names, text):
        self.name = name
        self.__cls = cls
        self.cls = self.__cls
        self.is_instance = 'instance' in prototype
        self.is_entry = '.entry' in text
        self.return_type = return_type
        self.text = text.split('\n')
        self.parameter_names = {x: i for i, x in enumerate(parameter_names)}
        self.__arguments = utilities.get_arguments(name)
        self.arguments = self.__arguments
        self.locals = utilities.get_local_stack(text)
        self.data = instruction.get_all_instructions(self.text)
        self.is_generic = False

    
    def clear(self):
        self.arguments = self.__arguments
        self.cls = self.__cls


    def set_class(self, cls):
        self.cls = cls

    
    def get_name(self):
        name = self.get_simple_name()
        for arg in self.__arguments.values():
            name = name.replace(arg, self.get_concrete_type(arg))
        return self.cls.get_name() + '::' + name


    def get_concrete_type(self, key):
        if '!' in key:
            return self.cls.get_type(key)
        else:
            return key

    
    def get_simple_name(self):
        return self.name.split('::')[-1]

    
    def get_instructions(self):
        return self.data
    

    def get_class(self):
        return copy.deepcopy(self.cls)


class generic_method(method):
    def __init__(self, name, cls, prototype, return_type, parameter_names, text):
        super().__init__(name, cls, prototype, return_type, parameter_names, text)
        self.is_generic = True
        self.type_names = ['!!' + x for x in utilities.get_args_between(prototype, '<', '>')]
        self.types = {}

    
    def clear(self):
        self.types = {}
        super().clear()
    
    
    def set_concrete(self, concrete):
        concrete_types = utilities.get_args_between(concrete, '<', '>')
        for idx in range(len(concrete_types)):
            self.types[self.type_names[idx]] = concrete_types[idx]


    def get_concrete_type(self, key):
        if '!!' in key:
            return self.types[key]
        else:
            return super().get_concrete_type(key)


    def get_name(self):
        name = self.get_simple_name()
        for k,v in self.types.items():
            name = name.replace(k, v)
            name = name.replace(k.replace('!', ''), v)
        return self.cls.get_name() + '::' + name