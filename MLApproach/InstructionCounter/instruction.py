from statemachine import state_machine
from random_arguments import create_random_argument
import re
from variable import variable
import utilities
import result
from simulation_exception import simulation_exception


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

        if len(cleaned) == 1 and re.match(r'-?\d(,|\.)\d', cleaned[0]):
            cleaned = float(cleaned[0].replace(',','.'))
        elif len(cleaned) == 1 and re.match(r'-?\d+', cleaned[0]):
            cleaned = int(cleaned[0])
        elif len(cleaned) == 1:
            cleaned = cleaned[0]

        return instruction(name, cleaned)


class instruction_rule():
    def __init__(self, name, location = 'STACK', action = None, operator = None, value = None):
        self.name = name
        self.location = location
        self.actions = action
        self.operator = operator
        self.value = value
        self.can_jump = False
        self.args = None
        self.type = None
        self.stack = []


    def add_values(self, values):
        for x in values:
            self.add_value(x)


    def add_value(self, value):
        self.stack.append(value)


    def get_default_value(self):
        if self.value == 'System.Boolean':
            return 0


    def create_array(self):
        arr = []
        length = self.stack.pop()
        for _ in range(length):
            arr.append(self.get_default_value())
        return arr

    
    def create_name(self):
        cls = None
        method = None
        found = False
        for elem in self.value:
            if found:
                method += f' {elem}'
            else:
                if elem in ['void', 'string', 'float32', 'float64', 'int16', 'int32', 'int64', 'bool', 'char']:
                    self.type = elem

            if '::' in elem:
                cls, method = elem.split('::')
                found = True
        return cls, method

    
    # I have not quite wrapped my head around the fact that this is a purely referential change
    def mutate(self, store):
        array = self.stack.pop()
        index = self.stack.pop()
        value = None
        if store:
            value = self.stack.pop()
            array[index] = value
        else:
            value = array[index]
        return value


    def call(self, state, active_class):
        name = self.value

        is_library = is_library_call(name)
        if is_library:
            name = name.split('::')[1]
            cleaned = utilities.remove_library_names(name)
            arguments = utilities.get_arguments(cleaned)
            for _ in range(len(arguments)):
                self.stack.pop()
            return self.stack, create_random_argument(self.type)
        else:
            method = state.methods[name]

            parameter_list = {}
            args = []
            for _ in range(len(method.arguments)):
                args.append(self.stack.pop())

            for key, value in method.arguments.items():
                var = variable(key, value)
                var.value = args.pop()
                parameter_list[key] = var
            
            method.arguments = parameter_list
            machine = state_machine(state.instructionset, state.classes, state.methods)
            res, return_val = machine.simulate(method, active_class)

            result.add_results(res, method.name, method.arguments)
            return self.stack, return_val


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

        if self.operator == '>':
            self.can_jump = val1 > val2
        elif self.operator == '<':
            self.can_jump = val1 < val2
        elif self.operator == '==':
            self.can_jump = val1 == val2
        elif self.operator == '<=':
            self.can_jump = val1 <= val2
        elif self.operator == '>=':
            self.can_jump = val1 >= val2
        elif self.operator == '&&':
            self.can_jump = val1 and val2
        elif self.operator == '||':
            self.can_jump = val1 or val2
        else:
            raise simulation_exception(f"The comparison operator '{self.operator}' has not been implemented")
        return self.can_jump

    
    def compute_index(self):
        available_jumps = [x.replace('(','').replace(',','').replace(')','') for x in self.value]
        index = self.stack.pop()
        if index < len(available_jumps):
            self.value = available_jumps[index]
        else:
            self.value = None


    def compute(self):
        val1 = self.stack.pop()
        val2 = self.stack.pop()

        if self.operator == '+':
            return val1 + val2
        elif self.operator == '-':
            return val1 - val2
        elif self.operator == '/':
            return val1 / val2
        elif self.operator == '*':
            return val1 * val2
        elif self.operator == '%':
            return val1 % val2
        else:
            raise simulation_exception(f"The compute operator '{self.operator}' has not been implemented")