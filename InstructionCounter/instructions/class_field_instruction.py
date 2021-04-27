from instruction import instruction
from action_enum import Actions


class store_class_field(instruction):
    def __init__(self, name, field_name):
        self.field_name = field_name
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        field_name = elements[-1].split('::')[-1]
        return store_class_field(name, field_name)

    @classmethod
    def keys(cls):
        return ['stfld']

    def execute(self, storage):
        value = storage.pop_stack()
        cls = storage.pop_stack()
        cls.set_state(self.field_name, value)
        return Actions.NOP, None

    def __repr__(self) -> str:
        return f'{self.name}: {self.field_name}'



class load_class_field(instruction):
    def __init__(self, name, field_name):
        self.field_name = field_name
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        field_name = elements[-1].split('::')[-1]
        return load_class_field(name, field_name)

    @classmethod
    def keys(cls):
        return ['ldfld']

    def execute(self, storage):
        cls = storage.pop_stack()
        value = cls.get_state(self.field_name).get_value()
        storage.push_stack(value)
        return Actions.NOP, None

    def __repr__(self) -> str:
        return f'{self.name}: {self.field_name}'