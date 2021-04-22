from instruction import instruction
from action_enum import Actions
import math


class load_float_instruction(instruction):
    def __init__(self, name, value):
        self.value = value
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        test = ' '.join(elements)
        if test in ['(00 00 00 00 00 00 F8 FF)', '(00 00 C0 FF)']:
            value = math.nan
        elif test in ['(00 00 00 00 00 00 F0 FF)', '(00 00 00 00 00 00 F0 7F)', '(00 00 80 FF)', '(00 00 80 7F)']:
            value = math.inf
        else:
            value = float(elements[0])
        return load_float_instruction(name, value)

    @classmethod
    def keys(cls):
        return ['ldc.r4', 'ldc.r8']

    def execute(self, storage):
        storage.push_stack(self.value)
        return Actions.NOP, None

    def __repr__(self) -> str:
        return f'{self.name}: {self.value}'



class load_int_instruction(instruction):
    def __init__(self, name, value):
        self.value = value
        super().__init__(name)
    
    @classmethod
    def create(cls, name, elements):
        value = None

        if elements:
            value = int(elements[0])
        elif 'm1' in name or 'M1' in name:
            value = -1
        else:
            value = int(name.split('.')[-1])

        return load_int_instruction(name, value)

    @classmethod
    def keys(cls):
        return ['ldc.i4', 'ldc.i4.0', 'ldc.i4.1', 'ldc.i4.2', 'ldc.i4.3',
            'ldc.i4.4', 'ldc.i4.5', 'ldc.i4.6', 'ldc.i4.7', 'ldc.i4.8',
            'ldc.i4.m1', 'ldc.i4.M1', 'ldc.i4.s', 'ldc.i4.i8']

    def execute(self, storage):
        storage.push_stack(self.value)
        return Actions.NOP, None

    def __repr__(self) -> str:
        return f'{self.name}: {self.value}'
