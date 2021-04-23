from argument_generator import get_system_name
from objects.Box import Box
from Parser import InstructionParser
from instruction import instruction
from action_enum import Actions
from variable import variable


class nop_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return nop_instruction(name)

    @classmethod
    def keys(cls):
        return ['nop']

    def execute(self, _):
        return Actions.NOP, None



class box_instruction(instruction):
    def __init__(self, name, data_type):
        super().__init__(name)
        self.data_type = data_type if type(data_type) == str else data_type.get_name()

    @classmethod
    def create(cls, name, elements):
        text = ' '.join(elements)
        data_type = InstructionParser.parse(name, text)
        return box_instruction(name, data_type)

    @classmethod
    def keys(cls):
        return ['box']

    def execute(self, storage):
        value = storage.pop_stack()
        concrete_type = self.data_type
        if '!' in self.data_type:
            method = storage.active_method
            temp = method.get_concrete_type(self.data_type)
            system_name = get_system_name(temp)
            concrete_type = system_name if system_name else temp
        box = Box(value, concrete_type)
        storage.push_stack(box)
        return Actions.NOP, None



class unbox_instruction(instruction):
    def __init__(self, name, data_type):
        super().__init__(name)
        self.data_type = data_type

    @classmethod
    def create(cls, name, elements):
        text = ' '.join(elements)
        data_type = InstructionParser.parse(name, text)
        return unbox_instruction(name, data_type)

    @classmethod
    def keys(cls):
        return ['unbox.any']

    def execute(self, storage):
        box = storage.pop_stack()
        unboxed = box.get_value()
        storage.push_stack(unboxed)
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



class instance_check_instruction(instruction):
    def __init__(self, name, data_type):
        super().__init__(name)
        self.data_type = data_type

    @classmethod
    def create(cls, name, elements):
        text = ' '.join(elements)
        data_type = InstructionParser.parse(name, text)
        return instance_check_instruction(name, data_type)
    
    @classmethod
    def keys(cls):
        return ['isinst']

    def execute(self, storage):
        value = storage.pop_stack()
        name = value.get_name()
        if name == self.data_type:
            storage.push_stack(value)
        else:
            storage.push_stack(None)
        return Actions.NOP, None
    