from instruction import instruction
from action_enum import Actions
import copy


class object_instruction(instruction):
    def __init__(self, name, class_name, constructor):
        self.constructor = constructor
        self.class_name = class_name
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        constructor = ' '.join(elements[2:])
        class_name = constructor.split('::')[0]
        return object_instruction(name, class_name, constructor)

    @classmethod
    def keys(cls):
        return ['newobj']

    def execute(self, storage):
        cls = copy.deepcopy(storage.get_class(self.class_name))
        storage.set_active_class(cls)
        return Actions.CALL, self.constructor



class callvirt_instruction(instruction):
    def __init__(self, name, method_name):
        self.method_name = method_name
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        method_name = ' '.join(elements[2:])
        return callvirt_instruction(name, method_name)

    @classmethod
    def keys(cls):
        return ['callvirt']

    def execute(self, storage):
        cls = storage.pop_stack()
        storage.set_active_class(cls)
        return Actions.CALL, self.method_name