from objects.delegate import delegate
from objects.delegate_class_container import delegate_class_container
from objects.class_container import class_container
from random_arguments import create_random_argument
from instruction import instruction
from action_enum import Actions
from utilities import is_library_call, get_arguments, primitive_type
import copy


class object_instruction(instruction):
    def __init__(self, name, class_name, constructor):
        self.constructor = constructor
        self.class_name = class_name
        args_list = self.constructor.split('(')[-1].replace(')','').split(',')
        self.num_args = len(args_list) if args_list and args_list != [''] else 0
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
            args = []
            for _ in range(self.num_args):
                args.append(storage.pop_stack())

            if cls.is_generic:
                cls.set_types(self.class_name)
                self.constructor = cls.get_generic_method(self.constructor)

            storage.set_active_class(cls)
            if isinstance(cls, delegate):
                cls.add_method(args)
                storage.push_stack(cls)
                return Actions.NOP, None
            else:
                return Actions.CALL, (self.constructor, args)



class callvirt_instruction(instruction):
    def __init__(self, name, method_name, return_type):
        self.method_name = method_name
        self.return_type = return_type
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        return_type = elements[1]
        method_name = ' '.join(elements[2:])
        return callvirt_instruction(name, method_name, return_type)

    @classmethod
    def keys(cls):
        return ['callvirt']

    def execute(self, storage):
        if is_library_call(self.method_name) or storage.active_class == storage.dummy_class:
            temp_args = get_arguments(self.method_name)
            for _ in temp_args:
                storage.pop_stack()
            result = create_random_argument(self.return_type)
            storage.push_stack(result)
            return Actions.NOP, None
        else:
            cls = None
            args = []
            while(True):
                value = storage.pop_stack()
                if isinstance(value, class_container):
                    cls = value
                    break
                else:
                    args.append(value)

            if cls.is_generic:
                self.method_name = cls.get_generic_method(self.method_name)

            if isinstance(cls, delegate):
                method = cls.get_method()
                method.set_class(cls)
                return  Actions.CALL, (method, args)
            else:
                storage.set_active_class(cls)
                return Actions.CALL, (self.method_name, args)