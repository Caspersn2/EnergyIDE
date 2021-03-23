import utilities
import instruction
import copy

# Represents an entire method
class method():
    def __init__(self, name, cls, prototype, return_type, text):
        self.name = name
        self.cls = cls
        self.is_instance = 'instance' in prototype
        self.is_entry = '.entry' in text
        self.return_type = return_type
        self.text = text.split('\n')
        self.arguments = utilities.get_arguments(name)
        self.locals = utilities.get_local_stack(text)
        self.data = instruction.get_all_instructions(self.text)

    
    def get_instructions(self):
        return self.data
    

    def get_class(self):
        return copy.deepcopy(self.cls)
