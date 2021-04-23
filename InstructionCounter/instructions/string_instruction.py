from argument_generator import get_system_name
from instruction import instruction
from action_enum import Actions
from variable import variable


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
        temp = variable(None, get_system_name('string'))
        temp.value = self.string
        storage.push_stack(temp)
        return Actions.NOP, None

    def __repr__(self) -> str:
        return f'{self.name} = {self.string}'