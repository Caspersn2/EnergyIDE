# Represents a variable
from argument_generator import can_generate, get_default
import copy


class variable():
    def __init__(self, name, type):
        self.name = name
        self.type = type
        self.value = None


    def set_value(self, value):
        self.value = value


    def set_default(self, storage):
        if can_generate(self.type):
            default_value = get_default(self.type)
        else:
            default_value = copy.deepcopy(storage.get_class(self.type))
        
        self.set_value(default_value)


    def get_value(self):
        return self.value


    def get_datatype(self):
        return self.type


    def __repr__(self) -> str:
        return f"('{self.value}' - {self.type})"