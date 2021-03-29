from instruction import instruction
from action_enum import Actions
from argument_generator import create_random_argument
from utilities import is_library_call
import copy


class call_instruction(instruction):
    def __init__(self, name, return_type, invocation_target, call_type):
        self.return_type = return_type
        self.invocation_target = invocation_target
        self.call_type = call_type
        args_list = self.invocation_target.split('(')[-1].replace(')','').split(',')
        self.num_args = len(args_list) if args_list and args_list != [''] else 0
        self.is_library = is_library_call(invocation_target.split('::')[0])
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        if elements[0] == 'instance':
            ret_type = elements[1]
            target = ' '.join(elements[2:])
            call_type = 'instance'
        else:
            ret_type = elements[0]
            target = ' '.join(elements[1:]).replace('class ', '')
            call_type = 'static'
        return call_instruction(name, ret_type, target, call_type)

    @classmethod
    def keys(cls):
        return ['call']

    def execute(self, storage):
        if self.is_library:
            return Actions.NOP, create_random_argument(self.return_type)
        else:
            args = []
            for _ in range(self.num_args):
                args.append(storage.pop_stack())

            class_name, method_name = self.invocation_target.split('::')
            if self.call_type == 'instance':
                class_instance = copy.deepcopy(storage.pop_stack())
                storage.set_active_class(class_instance)
            else:         
                class_instance = storage.get_class(class_name)
            
            method = class_instance.get_method(class_instance, method_name)
            method.set_parameters(args)
            return Actions.CALL, method
