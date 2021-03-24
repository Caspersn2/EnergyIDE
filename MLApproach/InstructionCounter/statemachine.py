from collections import Counter
import result
import copy
from storage import storage
from action_enum import Actions
from variable import variable


# An object representing a state machine to evaluate instructions
class state_machine():
    def __init__(self, storage_class):
        self.storage = storage.copy(storage_class)
        self.executed = []
        self.temp = None


    def load_locals(self, variables):
        if variables:
            for (k, v) in variables.items():
                self.storage.add_local(k, variable(k, v))


    def load_arguments(self, variables):
        if variables:
            for (k, v) in variables.items():
                self.storage.add_argument(k, v)


    # Entry method for the state_machine
    def simulate(self, method, active_class):
        if active_class:
            self.storage.set_active_class(active_class)
        else:
            self.storage.set_active_class(method.get_class())

        self.load_arguments(method.arguments)
        self.load_locals(method.locals)
        self.storage.is_instance = method.is_instance
        return_val = self.execute_method(method)

        res = [res.name for res in self.executed]
        result.add_results(Counter(res), method)
        return return_val


    def get_method(self, tuple):
        method_name, args = tuple
        method = self.storage.get_method(method_name)
        method.cls = self.storage.get_active_class()
        if method.is_generic:
            method.set_concrete(method_name)
        parameter_list = {}

        for key, value in method.arguments.items():
            value = method.get_concrete_type(value)
            var = variable(key, value)
            var.value = args.pop()
            parameter_list[key] = var
        
        method.arguments = parameter_list
        return method


    def execute_method(self, method):
        instructions = method.get_instructions()
        instruction_index = list(instructions.keys())
        index = 0
        return_val = None
        while index != len(instruction_index):
            current = instruction_index[index]
            action, value = instructions[current].execute(self.storage)
            self.executed.append(instructions[current])

            if action == Actions.JUMP:
                index = instruction_index.index(value)

            elif action == Actions.CALL:
                method = self.get_method(value)
                machine = state_machine(self.storage)
                return_val = machine.simulate(method, self.storage.get_active_class())
                method.clear()
                if return_val or return_val == 0:
                    self.storage.push_stack(return_val)
                index += 1

            elif action == Actions.NOP:
                index += 1

            elif action == Actions.RETURN:
                return_val = value
                break

        return return_val
