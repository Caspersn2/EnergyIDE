import copy
from action_enum import Actions
from variable import variable


# An object representing a state machine to evaluate instructions
class state_machine():
    available_instructions = None
    available_classes = None
    output = None

    def __init__(self, available_methods):
        self.locals = {}
        self.arguments = {}
        self.stack = []
        self.methods = available_methods
        self.classes = state_machine.available_classes
        self.instructionset = state_machine.available_instructions
        self.executed = []
        self.is_instance
        self.active_class = None
        self.temp = None


    def load_locals(self, variables):
        if variables:
            for (k, v) in variables.items():
                self.locals[k] = variable(k, v)

            
    def is_instance(self, value):
        self.is_instance = value


    def load_arguments(self, variables):
        if variables:
            for (k, v) in variables.items():
                if type(v) == variable:
                    self.arguments[k] = v
                else:
                    self.arguments[k] = variable(k, v)

    
    def load_active_class(self, cls):
        if cls:
            self.active_class = cls
        else:
            raise Exception("We always have to be in an active class")


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
            current = copy.deepcopy(self.instructionset[step.name])

            if (step.args or step.args == 0) and current.value is None:
                current.value = step.args
            elif step.args and (current.value or current.value == 0):
                current.args = step.args
            
            for action in current.actions:
                # PUSH to STACK
                if action == 'PUSH' and current.location == 'STACK':
                    self.stack.append(current.value)

                # PUSH to ARGS
                elif action == 'PUSH' and current.location == 'ARGUMENTS':
                    val = None
                    if self.is_instance:
                        if current.value == 0:
                            val = self.active_class
                        else:
                            val = self.get_local(current.value - 1, current.location).get_value()
                    else:
                        val = self.get_local(current.value, current.location).get_value()
                    self.stack.append(val)

                # PUSH to LOCALS
                elif action == 'PUSH' and current.location == 'LOCALS':
                    val = self.get_local(current.value, current.location).get_value()
                    self.stack.append(val)

                # PUSH to FIELDS
                elif action == 'PUSH' and current.location == 'FIELD':
                    _, field_name = current.create_name()
                    cls = self.stack.pop()
                    if field_name in cls.state:
                        val = cls.state[field_name].get_value()
                        self.stack.append(val)
                    else:
                        raise Exception(f"The field: '{field_name}' was not found in the class: '{self.active_class.name}'")

                # JUMP
                elif action == 'JUMP':
                    self.executed.append(current)
                    if 'COMPARE' in current.actions and current.can_jump:
                        return Actions.JUMP, current.args
                    elif 'COMPARE' not in current.actions:
                        return Actions.JUMP, current.value

                # POP from LOCALS
                elif action == 'POP' and current.location == 'LOCALS':
                    val = self.stack.pop()
                    self.get_local(current.value, current.location).set_value(val)

                # POP from STACK
                elif action == 'POP' and current.location == 'STACK':
                    val = self.stack.pop()
                    current.add_value(val)

                # POP from FIELD
                elif action == 'POP' and current.location == 'FIELD':
                    _, field_name = current.create_name()
                    val = self.stack.pop()
                    cls = self.stack.pop()
                    if field_name in cls.state:
                        cls.state[field_name].set_value(val)
                    else:
                        raise Exception(f"The field: '{field_name}' was not found in the class: '{cls.name}'")

                # COMPARE
                elif action == 'COMPARE':
                    res = current.compare()
                    self.stack.append(res)

                # COMPUTE
                elif action == 'COMPUTE':
                    res = current.compute()
                    self.stack.append(res)

                # CREATE
                elif action == 'CREATE':
                    class_name, const = current.create_name()
                    cls = copy.deepcopy(self.classes[class_name])
                    current.value = f'{cls.name}::{const}'
                    self.temp = cls

                # CALL
                elif action == 'CALL':
                    return_val = None
                    if type(current.value) != str:
                        class_name, method = current.create_name()
                        current.value = f'{class_name}::{method}'
                    
                    current.add_values(self.stack)
                    if self.temp:
                        return_val = current.call(self.methods, self.temp, state_machine.output)
                    else:
                        return_val = current.call(self.methods, self.active_class, state_machine.output)

                    if return_val:
                        self.stack.append(return_val)

                # CALLVIRT
                elif action == 'CALLVIRT':
                    class_name, method = current.create_name()
                    cls = self.stack.pop()
                    current.value = f'{cls.name}::{method}'
                    return_val = current.call(self.methods, cls, state_machine.output)
                    if return_val:
                        self.stack.append(return_val)

                # RETURN
                elif action == 'RETURN':
                    self.executed.append(current)
                    if self.stack:
                        return Actions.RETURN, self.stack.pop()

                else:
                    raise Exception(f"The action '{action}' has not been implemented with the extra variables: '{current.location}'")

            self.executed.append(current)
            return Actions.NOP, None
        else:
            raise Exception(f'The instruction "{step.name}" does not exist in the current configuration file')
