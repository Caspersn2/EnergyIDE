from simulation_exception import simulation_exception
from variable import variable

class storage():
    def __init__(self, classes) -> None:
        self.stack = []
        self.locals = {}
        self.arguments = {}
        self.classes = classes
        self.active_class = None
        self.is_instance = None

    
    # CLASSES
    def get_class(self, key):
        if key in self.classes:
            return self.classes[key]
        else:
            simulation_exception('The class was not found in the list of classes')


    # STACK
    def pop_stack(self):
        return self.stack.pop()

    def push_stack(self, value):
        self.stack.append(value)

    def is_stack_empty(self):
        return len(self.stack) == 0


    # LOCALS
    def add_local(self, name, value):
        self.locals[name] = value

    def get_local(self, key):
        if type(key) == str:
            return self.locals[key]
        else:
            real_key = list(self.locals.keys())[key]
            return self.locals[real_key]


    # ARGUMENTS
    def add_argument(self, name, value):
        if type(value) == variable:
            self.arguments[name] = value
        else:
            self.arguments[name] = variable(name, value)

    def get_argument(self, key):
        if type(key) == str:
            return self.arguments[key]
        else:
            real_key = list(self.arguments.keys())[key]
            return self.arguments[real_key]

    
    # ACTIVE CLASS
    def set_active_class(self, cls):
        self.active_class = cls

    def get_active_class(self):
        return self.active_class