import re
import output
from variable import variable


class_name = r'class\s(.*)'


def is_library_call(value):
    class_match = re.search(class_name, value)
    if class_match:
        method_name = class_match.groups()[0]
        if re.search(r'\[|\]', method_name):
            return (True, method_name)
        else:
            return (False, method_name)


# Represents a single instruction
class instruction():
    def __init__(self, name, args):
        self.name = name
        self.args = args


    @classmethod
    def create(cls, text):
        elements = text.split(' ')
        name = elements[0]
        cleaned = list(filter(None, elements[1:]))

        if len(cleaned) == 1 and re.match(r'\d+', cleaned[0]):
            cleaned = int(cleaned[0])

        return instruction(name, cleaned)


class instruction_rule():
    def __init__(self, name, location = 'STACK', action = None, comparison = None, value = None):
        self.name = name
        self.location = location
        self.actions = action
        self.comparison = comparison
        self.value = value
        self.stack = []


    def add_values(self, values):
        for x in values:
            self.add_value(x)


    def add_value(self, value):
        self.stack.append(value)


    def call(self, methods, instructionset):
        is_library, name = is_library_call(' '.join(self.value))
        if not is_library:
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


    def compare(self):
        val1 = None
        val2 = None
        if self.value is not None:
            val1 = self.stack.pop()
            val2 = self.value
        else:
            val2 = self.stack.pop()
            val1 = self.stack.pop()

        if self.comparison == '>':
            return val1 > val2
        elif self.comparison == '<':
            return val1 < val2
        elif self.comparison == '==':
            return val1 == val2
        elif self.comparison == '<=':
            return val1 <= val2
        elif self.comparison == '>=':
            return val1 >= val2
        else:
            raise Exception(f"The comparison operator '{self.comparison}' has not been implemented")