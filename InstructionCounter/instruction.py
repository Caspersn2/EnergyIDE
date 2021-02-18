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
        return instruction(name, cleaned)


class instruction_rule():
    def __init__(self, name, location = 'STACK', action = None, comparison = None, value = None):
        self.name = name
        self.location = location
        self.actions = action
        self.comparison = comparison
        self.value = value
        self.stack = []

    def add_value(self, value):
        self.stack.append(value)

    def compare(self):
        val1 = None
        val2 = None
        if self.value:
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