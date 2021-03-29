from instruction import instruction
from action_enum import Actions


class load_ref_argument_instruction(instruction):
    def __init__(self, name, variable_name):
        self.variable_name = variable_name
        super().__init__(name)

    
    @classmethod
    def create(cls, name, elements):
        variable_name = elements[0]
        return load_ref_argument_instruction(name, variable_name)

    
    @classmethod
    def keys(cls):
        return ['ldarga', 'ldarga.s']

    def execute(self, storage):
        key = storage.arg_conversion[self.variable_name]
        value = storage.arguments[key].get_value()
        storage.push_stack(value)
        return Actions.NOP, None



class load_field_addr_instruction(instruction):
    def __init__(self, name, field_name, datatype):
        self.field_name = field_name
        self.datatype = datatype
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        if 'valuetype' in elements:
            if 'class' in elements:
                class_index = elements.index('class')
                datatype = ' '.join(elements[1:class_index])
                field_name = elements[class_index]
            else:
                datatype, field_name = elements[1:]
        else:
            if 'class' in elements:
                class_index = elements.index('class')
                datatype = elements[0]
                field_name = ' '.join(elements[class_index:])
            elif 'native' in elements and 'int' in elements:
                datatype = 'native int'
                field_name = ' '.join(elements[2:])
            else:
                datatype, field_name = elements
        return load_field_addr_instruction(name, field_name, datatype)

    @classmethod
    def keys(cls):
        return ['ldflda']

    def execute(self, storage):
        raise NotImplementedError()