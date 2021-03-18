from instruction import instruction
from action_enum import Actions


class string_instruction(instruction):
    def __init__(self, name, value):
        self.string = value
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        string = ' '.join(elements).replace('"','')
        return string_instruction(name, string)

    @classmethod
    def keys(cls):
        return ['ldstr']

    def execute(self, storage):
        storage.push_stack(self.string)
        return Actions.NOP, None