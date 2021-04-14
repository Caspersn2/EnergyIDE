import copy
from simulation_exception import simulation_exception
from variable import variable
import re


def is_generic(value):
    if re.search(r'`[0-9]+<', value):
        return True
    else:
        return False


class storage():
    def __init__(self, classes, static_fields = None, active_value = None) -> None:
        self.stack = []
        self.locals = {}
        self.arguments = {}
        self.arg_conversion = None
        self.classes = classes
        self.active_class = []
        self.active_method = None
        self.active_value = active_value
        self.is_instance = None
        self.static_fields = static_fields or self.obtain_static(classes)

    
    @classmethod
    def copy(cls, storage_class):
        classes = storage_class.classes
        static_fields = storage_class.static_fields
        active_value = storage_class.active_value
        return storage(classes, static_fields, active_value)



    # ACTIVE VALUE
    def set_active_value(self, value):
        self.active_value = value


    def get_active_value(self):
        return self.active_value



    # METHODS
    def set_active_method(self, fun):
        self.active_method = fun

    
    def get_active_method(self):
        return self.active_method



    # STATIC FIELDS
    def obtain_static(self, classes):
        combined = {}
        for c in classes.values():
            for static in c.static_fields:
                field_name = c.get_name() + '::' + static
                datatype = c.static_fields[static].datatype
                combined[field_name] = variable(field_name, datatype)
                combined[field_name].set_default(self)
        self.add_additional_statics(combined)
        return combined

    def add_additional_statics(self, combined):
        empty = 'System.String::Empty'
        combined[empty] = variable(empty, 'System.String')
        combined[empty].set_value('')


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
        if is_generic(key):
            new_key = key.split('<')[0]
            for elem in self.classes:
                if new_key in elem:
                    return self.classes[elem]
            raise simulation_exception(f'The generic class: "{key}" was not found in the list of classes (Could be a missing import)')
        elif key in self.classes:
            return self.classes[key]
        else:
            raise simulation_exception(f'The class: "{key}" was not found in the list of classes (Could be a missing import)')

    
    def get_class_copy(self, key):
        cls = copy.deepcopy(self.get_class(key))
        cls.init_state(self)
        return cls


    # STACK
    def pop_stack(self):
        return self.stack.pop()


    def push_stack(self, value):
        self.stack.append(value)

    
    def peek_stack(self):
        return self.stack[-1]


    def is_stack_empty(self):
        return len(self.stack) == 0



    # LOCALS
    def add_local(self, name, value, is_init = False):
        if is_init:
            value.set_default(self)
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
        self.active_class.append(cls)


    def dup_active_class(self):
        if self.active_class:
            cls = self.active_class[-1]
            self.active_class.append(cls)
        else:
            raise simulation_exception('There was no class on the stack to duplicate')


    def get_active_class(self):
        if self.active_class:
            return self.active_class[-1]
        else:
            return []


    def pop_active_class(self):
        self.active_class.pop()