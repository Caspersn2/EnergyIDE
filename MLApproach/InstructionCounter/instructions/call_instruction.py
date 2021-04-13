import copy
from variable import variable
from Parser import InstructionParser
from instruction import instruction
from action_enum import Actions
import function_replacement
import blacklist


class call_instruction(instruction):
    def __init__(self, name, method_inst):
        self.return_type = method_inst.return_type
        self.invocation_target = method_inst.get_name()
        self.is_instance = method_inst.is_instance
        self.num_args = len(method_inst.parameters)
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        text = ' '.join(elements)
        method_inst = InstructionParser.parse(name, text)
        return call_instruction(name, method_inst)

    @classmethod
    def keys(cls):
        return ['call']

    def execute(self, storage):
        args = []
        for _ in range(self.num_args):
            args.append(storage.pop_stack())

        if blacklist.contains(self.invocation_target):
            return Actions.NOP, None

        if function_replacement.contains(self.invocation_target):
            if self.is_instance and isinstance(storage.peek_stack(), variable):
                storage.active_value = storage.pop_stack().get_value()
            res = function_replacement.call(self.invocation_target, args, storage)
            storage.push_stack(res)
            return Actions.NOP, None

        class_name, method_name = self.invocation_target.split('::')
        if self.is_instance:
            class_instance = storage.pop_stack()
            if isinstance(class_instance, variable):
                storage.active_value = class_instance.get_value()
                class_instance = class_instance.get_datatype(storage)
            storage.set_active_class(class_instance)
        else:
            class_instance = storage.get_class(class_name)
            storage.dup_active_class()
        
        method = class_instance.get_method(class_instance, method_name)
        method.set_parameters(args)
        return Actions.CALL, method

    def __repr__(self) -> str:
        return f'{self.name} -- ({self.invocation_target})'
