from argument_generator import can_generate
from simulation_exception import simulation_exception
from instruction import instruction
from action_enum import Actions
from variable import variable


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
        arg = storage.arguments[key]
        arg_value = arg.get_value()
        if can_generate(arg.get_name()):
            temp = variable(None, arg.get_datatype(storage))
            temp.value = arg.get_value()
            arg_value = temp
        storage.push_stack(arg_value)
        return Actions.NOP, None

    def __repr__(self) -> str:
        return f'{self.name}: {self.variable_name}'



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
        cls = storage.pop_stack()
        field_name = self.field_name.split('::')[-1]
        field = cls.get_state(field_name)
        class_instance = field.get_datatype(storage)
        storage.set_active_value(field.get_value())
        storage.push_stack(class_instance)
        return Actions.NOP, None

    def __repr__(self) -> str:
        return f'{self.name}: {self.field_name}'

    

class load_indirect_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return load_indirect_instruction(name)

    @classmethod
    def keys(cls):
        return ['ldind.i', 'ldind.i1', 'ldind.i2','ldind.i4', 'ldind.i8', 'ldind.r4', 'ldind.r8', 'ldind.ref', 'ldind.u1', 'ldind.u2', 'ldind.u4', 'ldobj']

    def execute(self, storage):
        active_value = storage.get_active_value()
        if active_value or active_value == 0:
            storage.push_stack(active_value)
            return Actions.NOP, None
        else:
            raise simulation_exception('There is no active value in storage to load as an indirect value')



class store_indirect_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return store_indirect_instruction(name)

    @classmethod
    def keys(cls):
        return ['stind.i', 'stind.i1', 'stind.i2', 'stind.i4', 'stind.i8', 'stind.r4', 'stind.r8', 'stind.ref']

    def execute(self, storage):
        value = storage.pop_stack()
        storage.active_value = value
        return Actions.NOP, None