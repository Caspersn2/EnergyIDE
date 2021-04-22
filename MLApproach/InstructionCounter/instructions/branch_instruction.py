from instruction import instruction
from action_enum import Actions


class unconditional_instruction(instruction):
    def __init__(self, name, target):
        self.jump_target = target
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        target = elements[0]
        return unconditional_instruction(name, target)

    @classmethod
    def keys(cls):
        return ['br', 'br.s']

    def execute(self, _):
        return Actions.JUMP, self.jump_target

    def __repr__(self) -> str:
        return f'{self.name} --> {self.jump_target}'



class double_conditional_instruction(instruction):
    def __init__(self, name, jump_target):
        self.jump_target = jump_target
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        target = elements[0]
        return double_conditional_instruction(name, target)

    @classmethod
    def keys(cls):
        return ['beq', 'beq.s', 'bge', 'bge.s', 'bge.un', 'bge.un.s', 'bgt', 'bgt.s', 'bgt.un', 'bgt.un.s', 
        'ble', 'ble.s', 'ble.un', 'ble.un.s', 'blt', 'blt.s', 'blt.un', 'blt.un.s', 'bne.un', 'bne.un.s']

    def get_comparison(self, key):
        return {
            'beq': lambda x, y: y == x,
            'bge': lambda x, y: y >= x,
            'bgt': lambda x, y: y > x,
            'ble': lambda x, y: y <= x,
            'blt': lambda x, y: y < x,
            'bne': lambda x, y: y != x
        }[key]

    def execute(self, storage):
        first = storage.pop_stack()
        second = storage.pop_stack()
        name = self.name.split('.')[0]
        is_true = self.get_comparison(name)(first, second)
        if is_true:
            return Actions.JUMP, self.jump_target
        else:
            return Actions.NOP, None

    def __repr__(self) -> str:
        return f'{self.name} --> {self.jump_target}'



class single_conditional_instruction(instruction):
    def __init__(self, name, jump_target):
        self.jump_target = jump_target
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        target = elements[0]
        return single_conditional_instruction(name, target)

    @classmethod
    def keys(cls):
        return ['brfalse', 'brfalse.s', 'brnull', 'brnull.s', 'brtrue', 'brtrue.s', 'brzero', 'brzero.s']

    def get_condition(self, name):
        return {
            'brfalse': lambda x: bool(x) == 0,
            'brfalse.s': lambda x: bool(x) == 0,
            'brnull': lambda x: bool(x) == 0,
            'brnull.s': lambda x: bool(x) == 0,
            'brtrue': lambda x: bool(x) == 1,
            'brtrue.s': lambda x: bool(x) == 1,
            'brzero': lambda x: bool(x) == 0,
            'brzero.s': lambda x: bool(x) == 0
        }[name]

    def execute(self, storage):
        value = storage.pop_stack()
        res = self.get_condition(self.name)(value)
        if res:
            return Actions.JUMP, self.jump_target
        else:
            return Actions.NOP, None

    def __repr__(self) -> str:
        return f'{self.name} --> {self.jump_target}'



class switch_instruction(instruction):
    def __init__(self, name, jump_table):
        self.jump_table = jump_table
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        table_string = ' '.join(elements)
        table_branches = table_string.replace('(','').replace(')','')
        jump_table = [x.strip() for x in table_branches.split(',')]
        return switch_instruction(name, jump_table)

    @classmethod
    def keys(cls):
        return ['switch']

    def execute(self, storage):
        index = storage.pop_stack()
        if len(self.jump_table) >= index and index >= 0:
            target = self.jump_table[index]
            return Actions.JUMP, target
        else:
            return Actions.NOP, None
            
    def __repr__(self) -> str:
        return f'{self.name} = {self.jump_table}'