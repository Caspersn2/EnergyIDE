from random_arguments import create_random_argument
from instruction import instruction
from action_enum import Actions
from utilities import is_library_call, get_arguments, primitive_type
import copy


class object_instruction(instruction):
    def __init__(self, name, class_name, constructor):
        self.constructor = constructor
        self.class_name = class_name
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        constructor = ' '.join(elements[2:]).replace('class ', '')
        class_name = constructor.split('::')[0]
        return object_instruction(name, class_name, constructor)

    @classmethod
    def keys(cls):
        return ['newobj']

    def execute(self, storage):
        if is_library_call(self.class_name):
            temp_args = get_arguments(self.constructor)
            argument_list = [v for _,v in temp_args.items() if v in primitive_type]
            for _ in argument_list:
                storage.pop_stack()
            storage.push_stack(storage.dummy_class)
            return Actions.NOP, None
        else:
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
        if storage.active_class == storage.dummy_class:
            temp_args = get_arguments(self.method_name)
            for _ in temp_args:
                storage.pop_stack()
            result = create_random_argument()
            storage.push_stack(result)
        else:
            cls = storage.pop_stack()
            storage.set_active_class(cls)
            return Actions.CALL, self.method_name