from objects.delegate import delegate
from objects.class_container import class_container
from argument_generator import create_random_argument
from instruction import instruction
from action_enum import Actions
from utilities import is_library_call, get_arguments, primitive_type
import copy


class object_instructions(instruction):
    def get_method(_, target_name, storage, cls):
        class_name, method_name = target_name.split('::')
        class_instance = storage.get_class(class_name)
        method = cls.get_method(class_instance, method_name)
        return method

    @classmethod
    def create(cls, _, __):
        raise NotImplementedError('This should not be called')

    @classmethod
    def keys(cls):
        return []



class new_object_instruction(object_instructions):
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
        return new_object_instruction(name, class_name, constructor)

    @classmethod
    def keys(cls):
        return ['newobj']

    def execute(self, storage):
        if is_library_call(self.class_name):
            temp_args = get_arguments(self.constructor)
            argument_list = [v for _,v in temp_args.items() if v in primitive_type]
            for _ in argument_list:
                storage.pop_stack()
            return Actions.NOP, None
        else:
            cls, args = self.get_class_and_args(storage)

            if cls.is_generic:
                cls.set_types(self.class_name)
                self.constructor = cls.get_generic_method(self.constructor)

            storage.set_active_class(cls)
            if isinstance(cls, delegate):
                cls.add_method(args)
                storage.push_stack(cls)
                return Actions.NOP, None
            else:
                method = super().get_method(self.constructor, storage, cls)
                method.set_parameters(args)
                return Actions.CALL, method


    def get_class_and_args(self, storage):
        cls = copy.deepcopy(storage.get_class(self.class_name))
        args = []
        for _ in range(self.num_args):
            args.append(storage.pop_stack())
        return cls, args



class callvirt_instruction(object_instructions):
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
        if is_library_call(self.method_name):
            temp_args = get_arguments(self.method_name)
            for _ in temp_args:
                storage.pop_stack()
            result = create_random_argument(self.return_type)
            storage.push_stack(result)
            return Actions.NOP, None
        else:
            cls, args = self.get_class_and_args(storage)
            generic_method = storage.find_generic(self.method_name)

            if cls.is_generic:
                self.method_name = cls.get_generic_method(self.method_name)

            if generic_method:
                generic_method.set_concrete(self.method_name)
                method = generic_method
            else:
                method = super().get_method(self.method_name, storage, cls)

            storage.set_active_class(cls)
            method.set_parameters(args)
            return Actions.CALL, method


    def get_class_and_args(_, storage):
        cls = None
        args = []
        while(True):
            value = storage.pop_stack()
            if isinstance(value, class_container):
                cls = value
                break
            else:
                args.append(value)
        return cls, args