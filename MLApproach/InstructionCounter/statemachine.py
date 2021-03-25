from collections import Counter
import result
from method import method
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

    
    def load_arg_conversion(self, parameters):
        if parameters:
            self.storage.arg_conversion = parameters


    # Entry method for the state_machine
    def simulate(self, method, active_class):
        if active_class:
            self.storage.set_active_class(active_class)
        else:
            self.storage.set_active_class(method.get_class())

        self.load_arguments(method.arguments)
        self.load_arg_conversion(method.parameter_names)
        self.load_locals(method.locals)
        self.storage.is_instance = method.is_instance
        return_val = self.execute_method(method)

        res = [res.name for res in self.executed]
        result.add_results(Counter(res), method, 'Simulation')
        return return_val


    def get_method(self, tuple):
        method_name, args = tuple

        if isinstance(method_name, method):
            curr_method = method_name
        else:
            curr_method = self.storage.get_method(method_name)
            curr_method.cls = self.storage.get_active_class()
            if curr_method.is_generic:
                curr_method.set_concrete(method_name)
        
        parameter_list = {}
        for key, value in curr_method.arguments.items():
            value = curr_method.get_concrete_type(value)
            var = variable(key, value)
            var.value = args.pop()
            parameter_list[key] = var
        
        curr_method.arguments = parameter_list
        return curr_method


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
