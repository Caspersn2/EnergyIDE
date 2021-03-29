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
            if self.name == 'ldarg.0':
                value = storage.get_active_class()
            else:
                value = storage.get_argument(self.index - 1).get_value()
        else:
            value = storage.get_argument(self.index).get_value()
        storage.push_stack(value)
        return Actions.NOP, None