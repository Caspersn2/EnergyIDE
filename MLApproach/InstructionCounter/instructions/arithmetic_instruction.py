from instruction import instruction
from simulation_exception import simulation_exception
from action_enum import Actions


class arithmetic_instruction(instruction):
    def __init__(_, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return arithmetic_instruction(name)

    @classmethod
    def keys(cls):
        return ['add', 'mul', 'div', 'sub', 'rem']

    def get_operator(_, name):
        return {
            'add': lambda x, y: x + y,
            'mul': lambda x, y: x * y,
            'div': lambda x, y: x / y,
            'sub': lambda x, y: x - y,
            'rem': lambda x, y: x % y
        }.get(name, simulation_exception(name))

    def execute(self, storage):
        first = storage.pop_stack()
        second = storage.pop_stack()
        res = self.get_operator(self.name)(first, second)
        storage.push_stack(res)
        return Actions.NOP, None
