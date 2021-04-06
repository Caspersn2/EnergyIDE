from objects.class_container import class_container
from objects.generic_class_container import generic_class_container
from objects.delegate import delegate


class delegate_class_container(class_container, delegate):
    def __init__(self, name, text, pos):
        self.delegate_method = None
        super().__init__(name, text, pos)



class generic_delegate_class_container(generic_class_container, delegate):
    def __init__(self, name, text, pos):
        self.delegate_method = None
        super().__init__(name, text, pos)


    def change_types(self, actual_method, interface_method):
        new_args = {}
        for key in actual_method.arguments:
            new_args[key] = interface_method.arguments[key]
        
        actual_method.arguments = new_args


    def add_method(self, args):
        method = args[0]
        for func in self.methods:
            if '::Invoke' in func.name:
                self.change_types(method, func)
        self.delegate_method = method


    def get_method(self, _, __):
        return self.delegate_method