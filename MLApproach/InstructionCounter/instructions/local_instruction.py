from instruction import instruction
from action_enum import Actions


class store_local_instruction(instruction):
    def __init__(self, name, index):
        self.index = index
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        index = cls.get_number(name, elements)
        return store_local_instruction(name, index)

    @classmethod
    def keys(cls):
        return ['stloc', 'stloc.0', 'stloc.1', 'stloc.2', 'stloc.3', 'stloc.s']

    def execute(self, storage):
        value = storage.pop_stack()
        storage.get_local(self.index).set_value(value)
        return Actions.NOP, None



class load_local_instruction(instruction):
    def __init__(self, name, index):
        self.index = index
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        index = cls.get_number(name, elements)
        return load_local_instruction(name, index)

    @classmethod
    def keys(cls):
        return ['ldloc', 'ldloc.0', 'ldloc.1', 'ldloc.2', 'ldloc.3', 'ldloc.s']

    def execute(self, storage):
        value = storage.get_local(self.index).get_value()
        storage.push_stack(value)
        return Actions.NOP, None
