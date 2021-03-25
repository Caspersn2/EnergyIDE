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



class dup_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return dup_instruction(name)

    @classmethod
    def keys(cls):
        return ['dup']

    def execute(self, storage):
        value = storage.pop_stack()
        storage.push_stack(value)
        storage.push_stack(value)
        return Actions.NOP, None



class load_null_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return load_null_instruction(name)

    @classmethod
    def keys(cls):
        return ['ldnull']

    def execute(self, storage):
        storage.push_stack(None)
        return Actions.NOP, None



class pop_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return pop_instruction(name)

    @classmethod
    def keys(cls):
        return ['pop']

    def execute(self, storage):
        storage.pop_stack()
        return Actions.NOP, None



class constrained_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return constrained_instruction(name)

    @classmethod
    def keys(cls):
        return ['constrained.']

    def execute(self, storage):
        return Actions.NOP, None
