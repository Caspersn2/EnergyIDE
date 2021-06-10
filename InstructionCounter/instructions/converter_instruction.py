from variable import variable
from instruction import instruction
from action_enum import Actions


class convert_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return convert_instruction(name)

    @classmethod
    def keys(cls):
        return ['conv.r4', 'conv.r8', 'conv.r.un', 'conv.i', 'conv.i1', 'conv.i2', 'conv.i4', 'conv.i8', 'conv.u', 'conv.u1', 'conv.u2', 'conv.u4', 'conv.u8']

    def convert(_, name):
        return {
            'conv.r4': lambda x: float(x),
            'conv.r8': lambda x: float(x),
            'conv.r.un': lambda x: float(x),
            'conv.i': lambda x: int(x),
            'conv.i1': lambda x: int(x),
            'conv.i2': lambda x: int(x),
            'conv.i4': lambda x: int(x),
            'conv.i8': lambda x: int(x),
            'conv.u': lambda x: abs(int(x)),
            'conv.u1': lambda x: abs(int(x)),
            'conv.u2': lambda x: abs(int(x)),
            'conv.u4': lambda x: abs(int(x)),
            'conv.u8': lambda x: abs(int(x))
        }[name]

    def execute(self, storage):
        elem = storage.pop_stack()
        if type(elem) == variable:
            value = elem.get_value()
            converted = self.convert(self.name)(value)
            elem.set_value(converted)      
            storage.push_stack(elem)
        else:
            converted = self.convert(self.name)(elem)
            storage.push_stack(converted)
        return Actions.NOP, None
