import utilities
import instruction
from statemachine import state_machine

# Represents an entire method
class method():
    def __init__(self, name, text):
        self.name = name
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

    def get_instructions(self, available_instructions, available_methods):
        machine = state_machine(available_instructions, available_methods)
        machine.load_arguments(self.arguments)
        machine.load_locals(self.locals)

        instructions = list(self.data.keys())
        index = 0
        while index != len(instructions):
            current = instructions[index]
            jump = machine.simulate(self.data[current])
            if jump:
                index = instructions.index(jump)
            else:
                index += 1

        return self.count_instructions(machine.executed)
