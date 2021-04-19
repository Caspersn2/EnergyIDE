from instruction import instruction
from action_enum import Actions


class return_instruction(instruction):
    def __init__(_, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return return_instruction(name)

    @classmethod
    def keys(cls):
        return ['ret']

    def execute(_, storage):
        value = None if storage.is_stack_empty() else storage.pop_stack()
        return Actions.RETURN, value
