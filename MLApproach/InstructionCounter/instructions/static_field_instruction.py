from instruction import instruction
from action_enum import Actions


class store_static_field_instruction(instruction):
    def __init__(self, name, field):
        self.field = field
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        field = elements[-1]
        return store_static_field_instruction(name, field)

    @classmethod
    def keys(cls):
        return ['stsfld']

    def execute(self, storage):
        raise NotImplementedError()



class load_static_field_instruction(instruction):
    def __init__(self, name, field):
        self.field = field
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        field = elements[-1]
        return store_static_field_instruction(name, field)

    @classmethod
    def keys(cls):
        return ['ldsfld']

    def execute(self, storage):
        raise NotImplementedError()

