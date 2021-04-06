from simulation_exception import simulation_exception
from objects.delegate import delegate
from objects.class_container import class_container
from argument_generator import create_random_argument
from instruction import instruction
from action_enum import Actions
from utilities import get_arguments, is_library_call, remove_library_names
import blacklist
import function_replacement
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
        if is_library_call(constructor):
            constructor = remove_library_names(constructor)
        class_name = constructor.split('::')[0]
        return new_object_instruction(name, class_name, constructor)

    @classmethod
    def keys(cls):
        return ['newobj']

    def execute(self, storage):
        if blacklist.contains(self.constructor):
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
        if not cls:
            raise simulation_exception(f'The class "{self.class_name}" was not found in the list of classes')
        args = []
        for _ in range(self.num_args):
            args.append(storage.pop_stack())
        return cls, args

    def __repr__(self) -> str:
        return f'{self.name} -- ({self.constructor})'



class callvirt_instruction(object_instructions):
    def __init__(self, name, method_name, return_type, is_instance):
        self.method_name = method_name
        self.return_type = return_type
        self.is_instance = is_instance
        super().__init__(name)


    @classmethod
    def create(cls, name, elements):
        is_instance = 'instance' in elements
        return_type = elements[1]
        method_name = ' '.join(elements[2:])
        if is_library_call(method_name):
            method_name = remove_library_names(method_name)
        return callvirt_instruction(name, method_name, return_type, is_instance)


    @classmethod
    def keys(cls):
        return ['callvirt']


    def execute(self, storage):
        if not self.is_instance:
            temp_args = get_arguments(self.method_name)
            for _ in temp_args:
                storage.pop_stack()
            result = create_random_argument(self.return_type)
            storage.push_stack(result)
            return Actions.NOP, None
        else:
            cls, args = self.get_class_and_args(storage)
            generic_method = storage.find_generic(self.method_name)

            if function_replacement.contains(self.method_name):
                res = function_replacement.call(self.method_name, args, storage)
                storage.push_stack(res)
                return Actions.NOP, None

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

    def __repr__(self) -> str:
        return f'{self.name} -- ({self.method_name})'