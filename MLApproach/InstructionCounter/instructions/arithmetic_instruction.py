from instruction import instruction
from action_enum import Actions


class arithmetic_instruction(instruction):
    def __init__(_, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return arithmetic_instruction(name)

    @classmethod
    def keys(cls):
        return ['add', 'mul', 'div', 'div.un', 'sub', 'rem', 'shl', 'shr']

    def get_operator(_, name):
        return {
            'add': lambda x, y: y + x,
            'mul': lambda x, y: y * x,
            'div': lambda x, y: y / x,
            'div.un': lambda x,y: y / x,
            'sub': lambda x, y: y - x,
            'rem': lambda x, y: y % x,
            'shl': lambda x, y: y << x,
            'shr': lambda x, y: y >> x
        }[name]

    def execute(self, storage):
        first = storage.pop_stack()
        second = storage.pop_stack()
        res = self.get_operator(self.name)(first, second)
        storage.push_stack(res)
        return Actions.NOP, None



class unary_arithmetic_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return unary_arithmetic_instruction(name)

    @classmethod
    def keys(cls):
        return ['neg']

    def execute(self, storage):
        value = storage.pop_stack()
        new_val = -1 * value
        storage.push_stacl(new_val)
        return Actions.NOP, None