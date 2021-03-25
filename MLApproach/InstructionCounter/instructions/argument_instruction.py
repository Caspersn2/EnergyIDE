from instruction import instruction
from action_enum import Actions


class load_argument_instruction(instruction):
    def __init__(self, name, index):
        self.index = index
        super().__init__(name)
    
    @classmethod
    def create(cls, name, elements):
        index = cls.get_number(name, elements)
        return load_argument_instruction(name, index)

    @classmethod
    def keys(cls):
        return ['ldarg', 'ldarg.0', 'ldarg.1', 'ldarg.2', 'ldarg.3', 'ldarg.s']

    def execute(self, storage):
        value = None
        if storage.is_instance:
            value = storage.get_active_class()
        else:
            value = storage.get_argument(self.index).get_value()
        storage.push_stack(value)
        return Actions.NOP, None



class load_ref_argument_instruction(instruction):
    def __init__(self, name, variable_name):
        self.variable_name = variable_name
        super().__init__(name)

    
    @classmethod
    def create(cls, name, elements):
        variable_name = elements[0]
        return load_ref_argument_instruction(name, variable_name)

    
    @classmethod
    def keys(cls):
        return ['ldarga', 'ldarga.s']

    def execute(self, storage):
        key = storage.arg_conversion[self.variable_name]
        value = storage.arguments[key].get_value()
        storage.push_stack(value)
        return Actions.NOP, None