from instruction import instruction
from simulation_exception import simulation_exception
from action_enum import Actions


class logical_instruction(instruction):
    def __init__(_, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return logical_instruction(name)

    @classmethod
    def keys(cls):
        return ['and', 'or', 'xor']

    def get_operator(_, name):
        return {
            'and': lambda x, y: x and y,
            'or': lambda x, y: x or y,
            'xor': lambda x, y: bool(x) ^ bool(y)
        }.get(name, simulation_exception(name))

    def execute(self, storage):
        first = storage.pop_stack()
        second = storage.pop_stack()
        res = self.get_operator(self.name)(first, second)
        storage.push_stack(res)
        return Actions.NOP, None



class single_logical_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return single_logical_instruction(name)

    @classmethod
    def keys(cls):
        return ['not']

    def execute(self, storage):
        value = storage.pop_stack()
        res = not bool(value)
        storage.push_stack(res)
        return Actions.NOP, None