from Parser import InstructionParser, UtilityParser
from argument_generator import can_generate
from variable import variable
from instruction import instruction
from action_enum import Actions


class method_pointer_instruction(instruction):
    def __init__(self, name, method_inst):
        class_name, method_name = method_inst.get_name().split('::')
        self.class_name = class_name
        self.method_name = method_name
        c_gen = UtilityParser.parse_generics(class_name)
        self.class_generics = c_gen[0] if c_gen else []
        m_gen = UtilityParser.parse_generics(method_name)
        self.method_generics = m_gen[0] if m_gen else []
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        text = ' '.join(elements)
        method_inst = InstructionParser.parse(name, text)
        return method_pointer_instruction(name, method_inst)

    @classmethod
    def keys(cls):
        return ['ldftn']

    def execute(self, storage):
        cls = storage.get_class(self.class_name)

        if cls.is_generic or '!!' in self.method_name:
            method = cls.get_generic_method(self.method_name, self.class_generics, self.method_generics)
        else:
            method = cls.get_method(None, self.method_name)

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



class load_token_instruction(instruction):
    def __init__(self, name, data):
        super().__init__(name)
        self.data = data

    @classmethod
    def create(cls, name, elements):
        text = ' '.join(elements)
        if 'method' in elements:
            data = InstructionParser.parse('call', text)
        else:
            data = InstructionParser.parse(name, text)
            if len(data) != 1:
                data = variable(''.join(data[1:]), data[0])
        return load_token_instruction(name, data)

    @classmethod
    def keys(cls):
        return ['ldtoken']

    def execute(self, storage):
        if type(self.data) == variable and 'StaticArrayInit' in self.data.get_name():
            storage.push_stack([])
        else:
            raise NotImplementedError('FIX THIS')
        return Actions.NOP, None