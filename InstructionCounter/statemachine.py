from collections import Counter
from objects.Container import Container
from stacktrace import stacktrace
import result
from storage import storage
from action_enum import Actions
from variable import variable


# An object representing a state machine to evaluate instructions
class state_machine():
    def __init__(self, storage_class):
        self.storage = storage.copy(storage_class)
        self.stacktrace = stacktrace()
        self.temp = None


    def load_locals(self, locals):
        if locals:
            variables = locals.local_storage
            is_init = locals.is_init
            for var in variables:
                self.storage.add_local(var.index, variable(var.index, var.get_name(), var.is_valuetype()), is_init)


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

        self.storage.set_active_method(method)
        self.load_arguments(method.arguments)
        self.load_arg_conversion(method.get_parameter_names())
        self.load_locals(method.locals)
        self.storage.is_instance = method.is_instance
        return_val = self.execute_method(method)

        res = [res.name for res in self.stacktrace.get_executed()]
        return_value = return_val
        if isinstance(return_val, Container):
            return_value = return_value.get_name()
        result.add_results(Counter(res), method, 'Simulation', return_value)
        return return_val


    def set_params(self, tuple):
        curr_method, args = tuple
        curr_method.arguments = self.get_parameters(args, curr_method)
        return curr_method


    def get_parameters(_, args, curr_method):
        parameter_list = {}
        for key, value in curr_method.arguments.items():
            value = curr_method.get_concrete_type(value)
            var = variable(key, value)
            var.value = args.pop()
            parameter_list[key] = var
        return parameter_list


    def execute_method(self, method):
        instructions = method.get_instructions()
        instruction_index = list(instructions.keys())
        index = 0
        return_val = None
        while index != len(instruction_index):
            current = instruction_index[index]

            try:
                self.stacktrace.add_step(instructions[current], current, method)
                action, value = instructions[current].execute(self.storage)
                self.stacktrace.step_done()
            except Exception as e:
                e.args = (e.args[0] + '\nINTERNAL STACKTRACE\n' + self.stacktrace.get_stacktrace(),)
                raise e

            if action == Actions.JUMP:
                index = instruction_index.index(value)

            elif action == Actions.CALL:
                machine = state_machine(self.storage)
                return_val = machine.simulate(value, self.storage.get_active_class())
                value.clear()
                if return_val or return_val == 0:
                    self.storage.push_stack(return_val)
                self.storage.pop_active_class()
                index += 1

            elif action == Actions.NOP:
                index += 1

            elif action == Actions.RETURN:
                return_val = value
                break

        return return_val
