from action_enum import Actions
import utilities
import instruction
import copy
from statemachine import state_machine

# Represents an entire method
class method():
    def __init__(self, name, cls, is_instance, return_type, text):
        self.name = name
        self.cls = cls
        self.is_instance = is_instance
        self.return_type = return_type
        self.text = text.split('\n')
        self.arguments = utilities.get_arguments(name)
        self.locals = utilities.get_local_stack(text)
        self.data = instruction.get_all_instructions(self.text)


    def count_instructions(self, instructions):
        counter = {}
        for inst in instructions:
            if inst.name not in counter:
                counter[inst.name] = 0
            counter[inst.name] += 1
        return counter


    def get_instructions(self, available_methods, active_class):
        machine = state_machine(available_methods)
        machine.load_arguments(self.arguments)
        machine.load_locals(self.locals)
        machine.is_instance(self.is_instance)

        if active_class:
            machine.load_active_class(active_class)
        else:
            machine.load_active_class(copy.deepcopy(self.cls))

        instructions = list(self.data.keys())
        index = 0
        return_val = None
        while index != len(instructions):
            current = instructions[index]
            action, value = machine.simulate(self.data[current])
            if action == Actions.JUMP:
                index = instructions.index(value)
            elif action == Actions.NOP:
                index += 1
            elif action == Actions.RETURN:
                return_val = value
                break

        return self.count_instructions(machine.executed), return_val