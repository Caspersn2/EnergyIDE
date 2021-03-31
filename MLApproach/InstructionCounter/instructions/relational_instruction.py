from instruction import instruction
from action_enum import Actions


class relational_instruction(instruction):
    def __init__(_, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return relational_instruction(name)

    @classmethod
    def keys(cls):
        return ['ceq', 'cgt', 'cgt.un', 'clt', 'clt.un']

    def get_operator(_, name):
        return {
            'ceq': lambda x, y: y == x,
            'cgt': lambda x, y: y > x,
            'cgt.un': lambda x, y: y > x,
            'clt': lambda x, y: y < x,
            'clt.un': lambda x, y: y < x
        }[name]

    def execute(self, storage):
        first = storage.pop_stack()
        second = storage.pop_stack()
        res = self.get_operator(self.name)(first, second)
        storage.push_stack(res)
        return Actions.NOP, None