import re
import output
from variable import variable
from utilities import get_arguments


class_name = r'class\s(.*)'
instruction_match = r'\s+(IL_[0-9a-f]+):\s(.+)'


def is_library_call(value):
    if re.search(r'\[|\]', value):
        return True
    else:
        return False


# Returns all instructions from a (List) of text. (Split at newlines)
def get_all_instructions(text):
    instructions = {}
    for line in text:
        match = re.match(instruction_match, line)
        if match:
            name, data = match.groups()
            instr = instruction.create(data)
            instructions[name] = instr
    return instructions


# Represents a single instruction
class instruction():
    def __init__(self, name, args):
        self.name = name
        self.args = args


    @classmethod
    def create(cls, text):
        elements = text.split(' ')
        name = elements[0]
        cleaned = list(filter(lambda x: x != 'class', elements[1:]))
        cleaned = list(filter(None, cleaned))

        if len(cleaned) == 1 and re.match(r'\d+', cleaned[0]):
            cleaned = int(cleaned[0])
        elif len(cleaned) == 1:
            cleaned = cleaned[0]

        return instruction(name, cleaned)


class instruction_rule():
    def __init__(self, name, location = 'STACK', action = None, comparison = None, value = None):
        self.name = name
        self.location = location
        self.actions = action
        self.comparison = comparison
        self.value = value
        self.can_jump = False
        self.args = None
        self.stack = []


    def add_values(self, values):
        for x in values:
            self.add_value(x)


    def add_value(self, value):
        self.stack.append(value)


    def call(self, methods, instructionset):
        name = ' '.join(self.value)
        is_library = is_library_call(name)
        if is_library:
            name = name.split('::')[1]
            arguments = get_arguments(name)
            for _ in range(len(arguments)):
                self.stack.pop()
        else:
            # TODO: Fix that calls can go across classes
            name = name.split('::')[1]
            method = methods[name]

            parameter_list = {}
            args = []
            for _ in range(len(method.arguments)):
                args.append(self.stack.pop())

            for key, value in method.arguments.items():
                var = variable(key, value)
                var.value = args.pop()
                parameter_list[key] = var
            
            method.arguments = parameter_list
            res = method.get_instructions(instructionset, methods)

            # TODO: Fix the output, set it to the same as in main
            output.write_to_file(method.name, res, 'results.csv')


    def bool_to_integral(self, boolean):
        if type(boolean) == bool:
            if boolean:
                return 1
            else:
                return 0
        else:
            return boolean


    def compare(self):
        val1 = None
        val2 = None
        if self.value is not None:
            val1 = self.bool_to_integral(self.stack.pop())
            val2 = self.value
        else:
            val1 = self.bool_to_integral(self.stack.pop())
            val2 = self.bool_to_integral(self.stack.pop())

        if self.comparison == '>':
            self.can_jump = val1 > val2
            return val1 > val2
        elif self.comparison == '<':
            self.can_jump = val1 < val2
            return val1 < val2
        elif self.comparison == '==':
            self.can_jump = val1 == val2
            return val1 == val2
        elif self.comparison == '<=':
            self.can_jump = val1 <= val2
            return val1 <= val2
        elif self.comparison == '>=':
            self.can_jump = val1 >= val2
            return val1 >= val2
        else:
            raise Exception(f"The comparison operator '{self.comparison}' has not been implemented")