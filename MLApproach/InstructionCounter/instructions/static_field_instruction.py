from simulation_exception import simulation_exception
from instruction import instruction
from action_enum import Actions


class store_static_field_instruction(instruction):
    def __init__(self, name, field):
        self.field = field
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        field = elements[-1]
        return store_static_field_instruction(name, field)

    @classmethod
    def keys(cls):
        return ['stsfld']

    def execute(self, storage):
        value = storage.pop_stack()
        if self.field in storage.static_fields:
            storage.static_fields[self.field].set_value(value)
            return Actions.NOP, None
        else:
            raise simulation_exception('The static field in question was not found')



class load_static_field_instruction(instruction):
    def __init__(self, name, field):
        self.field = field
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        field = elements[-1]
        return load_static_field_instruction(name, field)

    @classmethod
    def keys(cls):
        return ['ldsfld']

    def execute(self, storage):
        if self.field in storage.static_fields:
            value = storage.static_fields[self.field].get_value()
            storage.push_stack(value)
            return Actions.NOP, None
        else:
            raise simulation_exception('The static field in question was not found')

