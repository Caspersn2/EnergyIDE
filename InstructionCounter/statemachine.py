import copy
from variable import variable


# An object representing a state machine to evaluate instructions
class state_machine():
    def __init__(self, available_instructions, available_methods):
        self.locals = {}
        self.arguments = {}
        self.stack = []
        self.methods = available_methods
        self.instructionset = available_instructions
        self.executed = []


    def load_locals(self, variables):
        if variables:
            for (k, v) in variables.items():
                self.locals[k] = variable(k, v)


    def load_arguments(self, variables):
        if variables:
            for (k, v) in variables.items():
                if type(v) == variable:
                    self.arguments[k] = v
                else:
                    self.arguments[k] = variable(k, v)


    # Obtain locals based on either a numeric key or string key
    def get_local(self, key, storage):
        store = self.get_storage(storage)
        if type(key) == str:
            return store[key]
        else:
            real_key = list(store.keys())[key]
            return store[real_key]


    # Determines which storage container to obtain the values from based on a string key
    def get_storage(self, storage):
        if storage == 'LOCALS':
            return self.locals
        elif storage == 'ARGUMENTS':
            return self.arguments
        else:
            raise Exception(f"The desired storage medium: '{storage}' is not part of the state machine")


    # Simulates the individual steps of a CIL program
    def simulate(self, step):
        if step.name in self.instructionset:
            print(step.name)
            current = copy.deepcopy(self.instructionset[step.name])

            if step.args and current.value is None:
                current.value = step.args
            
            for action in current.actions:
                if action == 'PUSH' and current.location == 'STACK':
                    self.stack.append(current.value)
                elif action == 'PUSH' and current.location in ['LOCALS', 'ARGUMENTS']:
                    val = self.get_local(current.value, current.location).get_value()
                    self.stack.append(val)
                elif action == 'JUMP':
                    return current.value
                elif action == 'POP' and current.location == 'LOCALS':
                    val = self.stack.pop()
                    self.get_local(current.value, current.location).set_value(val)
                elif action == 'POP' and current.location == 'STACK':
                    val = self.stack.pop()
                    current.add_value(val)
                elif action == 'COMPARE':
                    res = current.compare()
                    self.stack.append(res)
                elif action == 'CALL':
                    current.add_values(self.stack)
                    current.call(self.methods, self.instructionset)

            self.executed.append(current)
        else:
            raise Exception(f'The instruction "{step.name}" does not exist in the current configuration file')
