from instruction import instruction, is_library_call
from action_enum import Actions
from random_arguments import create_random_argument


class call_instruction(instruction):
    def __init__(self, name, return_type, invocation_target):
        self.return_type = return_type
        self.invocation_target = invocation_target
        self.is_library = is_library_call(invocation_target)
        super().__init__(name)

    @classmethod
    def create(cls, name, elements):
        if elements[0] == 'instance':
            ret_type = elements[1]
            target = ' '.join(elements[2:])
        else:
            ret_type = elements[0]
            target = ' '.join(elements[1:])
        return call_instruction(name, ret_type, target)

    @classmethod
    def keys(cls):
        return ['call']

    def execute(self, _):
        if self.is_library:
            return Actions.NOP, create_random_argument(self.return_type)
        else:
            return Actions.CALL, self.invocation_target
