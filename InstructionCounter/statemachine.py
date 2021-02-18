import copy

# An object representing a state machine to evaluate instructions
class state_machine():
    def __init__(self, available_instructions):
        self.locals = {}
        self.arguments = {}
        self.stack = []
        self.instructionset = available_instructions
        self.executed = []


    def load_locals(self, variables):
        if variables:
            for (k, v) in variables.items():
                self.locals[k] = variable(k, v)


    def load_arguments(self, variables):
        if variables:
            for (k, v) in variables.items():
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
                    self.get_local(current.value).set_value(val)
                elif action == 'POP' and current.location == 'STACK':
                    val = self.stack.pop()
                    current.add_value(val)
                elif action == 'COMPARE':
                    res = current.compare()
                    self.stack.append(res)

            self.executed.append(current)
        else:
            raise Exception(f'The instruction "{step.name}" does not exist in the current configuration file')


# Represents a variable
class variable():
    def __init__(self, name, type):
        self.name = name
        self.type = type
        self.value = None

    def set_value(self, value):
        self.value = value

    def get_value(self):
        return self.value