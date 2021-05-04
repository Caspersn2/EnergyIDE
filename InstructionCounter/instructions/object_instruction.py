from variable import variable
from Parser import InstructionParser, UtilityParser
from simulation_exception import simulation_exception
from argument_generator import create_random_argument
from objects.Container import Container, DelegateContainer, StructContainer
from instruction import instruction
from action_enum import Actions
import blacklist
import function_replacement


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
    def __init__(self, name, method_inst):
        self.constructor = method_inst.get_name()
        self.class_name = self.constructor.split('::')[0]
        self.num_args = len(method_inst.parameters)
        c_gen = UtilityParser.parse_generics(self.class_name)
        self.class_generics = c_gen[0] if c_gen else []
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        text = ' '.join(elements)
        method_inst = InstructionParser.parse(name, text)
        return new_object_instruction(name, method_inst)

    @classmethod
    def keys(cls):
        return ['newobj']

    def execute(self, storage):
        if blacklist.contains(self.constructor):
            return Actions.NOP, None
        else:
            cls, args = self.get_class_and_args(storage)

            if function_replacement.contains(self.constructor):
                res = function_replacement.call(self.constructor, args, storage)
                storage.push_stack(res)
                return Actions.NOP, None

            if cls.is_generic:
                self.constructor = cls.get_generic_method_name(self.constructor, self.class_generics)

            storage.set_active_class(cls)
            if isinstance(cls, DelegateContainer):
                cls.set_method(args)
                storage.push_stack(cls)
                return Actions.NOP, None
            elif isinstance(cls, StructContainer):
                storage.push_stack(cls)
                
            method = super().get_method(self.constructor, storage, cls)
            method.set_parameters(args)
            return Actions.CALL, method


    def get_class_and_args(self, storage):
        cls = storage.get_class_copy(self.class_name)
        if not isinstance(cls, Container):
            raise simulation_exception(f'The class "{self.class_name}" was not found in the list of classes')
        args = []
        for _ in range(self.num_args):
            args.append(storage.pop_stack())
        return cls, args

    def __repr__(self) -> str:
        return f'{self.name} -- ({self.constructor})'



class callvirt_instruction(object_instructions):
    def __init__(self, name, method_inst):
        self.method_name = method_inst.get_name()
        class_name, method_name = self.method_name.split('::')
        self.return_type = method_inst.return_type.get_name()
        self.is_instance = method_inst.is_instance
        self.num_args = len(method_inst.parameters)
        c_gen = UtilityParser.parse_generics(class_name)
        self.class_generics = c_gen[0] if c_gen else []
        m_gen = UtilityParser.parse_generics(method_name)
        self.method_generics = m_gen[0] if m_gen else []
        super().__init__(name)


    @classmethod
    def create(cls, name, elements):
        text = ' '.join(elements)
        method_inst = InstructionParser.parse(name, text)
        return callvirt_instruction(name, method_inst)


    @classmethod
    def keys(cls):
        return ['callvirt']


    def execute(self, storage):
        if not self.is_instance:
            for _ in range(len(self.num_args)):
                storage.pop_stack()
            result = create_random_argument(self.return_type)
            storage.push_stack(result)
            return Actions.NOP, None
        else:
            cls, args = self.get_class_and_args(storage)

            if function_replacement.contains(self.method_name):
                storage.set_active_class(cls)
                res = function_replacement.call(self.method_name, args, storage)
                storage.push_stack(res)
                storage.pop_active_class()
                return Actions.NOP, None

            if cls.is_generic or '!!' in self.method_name:
                method = cls.get_generic_method(self.method_name, self.class_generics, self.method_generics)
            else:
                method = super().get_method(self.method_name, storage, cls)

            storage.set_active_class(cls)
            method.set_parameters(args)
            return Actions.CALL, method


    def get_class_and_args(self, storage):
        cls = None
        args = []
        while(True):
            value = storage.pop_stack()
            if len(args) != self.num_args:
                args.append(value)
            elif isinstance(value, Container):
                cls = value
                break
            elif isinstance(value, variable):
                cls = value.get_datatype(storage)
                storage.active_value = value.get_value()
                break
            else:
                raise simulation_exception('Custom exception')
        return cls, args

    def __repr__(self) -> str:
        return f'{self.name} -- ({self.method_name})'