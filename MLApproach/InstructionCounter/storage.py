from simulation_exception import simulation_exception
from variable import variable
from objects.dummy_class import dummy_class
from utilities import is_library_call, is_generic, get_args_between


class storage():
    def __init__(self, classes, methods, static_fields = None) -> None:
        self.stack = []
        self.locals = {}
        self.arguments = {}
        self.arg_conversion = None
        self.classes = classes
        self.methods = methods
        self.active_class = None
        self.is_instance = None
        self.dummy_class = dummy_class()
        self.static_fields = static_fields or self.obtain_static(classes)

    
    @classmethod
    def copy(cls, storage_class):
        classes = storage_class.classes
        methods = storage_class.methods
        static_fields = storage_class.static_fields
        return storage(classes, methods, static_fields)


    # METHODS
    def get_method(self, key):
        method = key.split('::')[-1]
        if '<' in method and '>' in method:
            return self.find_generic(method)
        if key in self.methods:
            return self.methods[key]
        else:
            raise simulation_exception(f"The desired method '{key}' was not found in the list of methods")

    def find_generic(self, method_name):
        num_args = len(get_args_between(method_name, '(', ')'))
        generic_methods = [v for v in self.methods.values() if v.is_generic]
        for candidate in generic_methods:
            candidate_name = candidate.get_simple_name()
            if method_name.split('<')[0] == candidate_name.split('<')[0] and num_args == len(candidate.arguments):
                return candidate
        raise simulation_exception(f'No generic method matched the following string: "{method_name}"')


    # STATIC FIELDS
    def obtain_static(_, classes):
        combined = {}
        for c in classes.values():
            for static in c.static_fields:
                field_name = c.name + '::' + static
                datatype = c.static_fields[static].datatype
                combined[field_name] = variable(field_name, datatype)
        return combined

    def get_static_field(self, key):
        if key in self.static_fields:
            return self.static_fields[key].get_value()
        else:
            raise simulation_exception(f'The static_field "{key}" was not found in the list of static fields')

    def set_static_field(self, key, value):
        if key in self.static_fields:
            return self.static_fields[key].set_value(value)
        else:
            raise simulation_exception(f'The static_field "{key}" was not found in the list of static fields')

    
    # CLASSES
    def get_class(self, key):
        if is_library_call(key):
            return self.dummy_class
        elif is_generic(key):
            new_key = key.split('<')[0]
            for elem in self.classes:
                if new_key in elem:
                    return self.classes[elem]
        elif key in self.classes:
            return self.classes[key]
        else:
            raise simulation_exception('The class was not found in the list of classes')


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