from argument_generator import can_generate
from objects.Types import DataType
from variable import variable
from instruction import instruction
from action_enum import Actions


class method_pointer_instruction(instruction):
    def __init__(self, name, datatype, method_name):
        self.datatype = datatype
        self.method_name = method_name
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        if 'instance' in elements:
            datatype = elements[1]
            method_name = ' '.join(elements[2:])
        else:
            datatype = elements[0]
            method_name = ' '.join(elements[1:])
        return method_pointer_instruction(name, datatype, method_name)

    @classmethod
    def keys(cls):
        return ['ldftn']

    def execute(self, storage):
        method = storage.get_method(self.method_name)
        storage.push_stack(method)
        return Actions.NOP, None

    def __repr__(self) -> str:
        return f'{self.name} -- ({self.method_name})'



class local_address_instruction(instruction):
    def __init__(self, name, index):
        self.index = index
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        index = super().get_number(name, elements)
        return local_address_instruction(name, index)

    @classmethod
    def keys(cls):
        return ['ldloca', 'ldloca.s']

    def execute(self, storage):
        local = storage.get_local(self.index)
        local_value = local.get_value()
        if can_generate(local.get_name()):
            temp = variable(None, local.get_datatype(storage))
            temp.set_value(local.get_value())
            local_value = temp
        storage.push_stack(local_value)
        return Actions.NOP, None