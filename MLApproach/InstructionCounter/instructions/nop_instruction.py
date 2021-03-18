from instruction import instruction
from action_enum import Actions


class nop_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return nop_instruction(name)

    @classmethod
    def keys(cls):
        return ['nop', 'box']

    def execute(self, _):
        return Actions.NOP, None
