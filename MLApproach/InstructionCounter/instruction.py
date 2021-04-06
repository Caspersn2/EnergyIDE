from abc import abstractclassmethod, abstractmethod
from instructions.dummy_instruction import dummy_instruction
import importlib
import inspect
import os
import re


class_name = r'class\s(.*)'
instruction_match = r'\s+(IL_[0-9a-f]+):\s(.+)'
NOT_IMPLEMENTED = 'The operator is not implemented'
classes = []


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


def load_classes():
    """
    Loads all of the modules from the folder called 'instructions'
    This is a dynamic loading of the classes
    """
    if not classes:
        directory = os.path.dirname(os.path.abspath(__file__))
        instruction_directory = os.path.join(directory, 'instructions')
        for file in os.listdir(instruction_directory):
            module_name = os.path.splitext(os.path.basename(file))[0]
            module = importlib.import_module('.' + module_name, package='instructions')
            for member in dir(module):
                handler_class = getattr(module, member)
                if handler_class and inspect.isclass(handler_class) and issubclass(handler_class, instruction) and handler_class is not instruction:
                    classes.append(handler_class)


# Represents a single instruction
class instruction():
    def __init__(self, name):
        self.name = name


    @abstractclassmethod
    def keys(cls):
        pass


    @abstractmethod
    def execute(self, storage):
        pass


    @classmethod
    def get_number(cls, name, extra):
        index = None
        if extra:
            index = int(extra[0])
        else:
            index = int(name.split('.')[-1])
        return index


    @classmethod
    def create(cls, text):
        elements = text.split(' ')
        name = elements[0]
        load_classes()
        
        for container in classes:
            if name in container.keys():
                return container.create(name, elements[1:])

        return dummy_instruction(name)

    def __repr__(self) -> str:
        return self.name