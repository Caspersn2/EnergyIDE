from instruction import instruction
from simulation_exception import simulation_exception
from action_enum import Actions


class relational_instruction(instruction):
    def __init__(_, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return relational_instruction(name)

    @classmethod
    def keys(cls):
        return ['ceq', 'cgt', 'clt']

    def get_operator(_, name):
        return {
            'ceq': lambda x, y: y == x,
            'cgt': lambda x, y: y > x,
            'clt': lambda x, y: y < x
        }.get(name, simulation_exception(name))

    def execute(self, storage):
        first = storage.pop_stack()
        second = storage.pop_stack()
        res = self.get_operator(self.name)(first, second)
        storage.push_stack(res)
        return Actions.NOP, None