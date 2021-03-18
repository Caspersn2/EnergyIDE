import copy
from collections import Counter
from simulation_exception import simulation_exception
from action_enum import Actions
from variable import variable


# An object representing a state machine to evaluate instructions
class state_machine():
    def __init__(self, instructions, classes, methods):
        self.locals = {}
        self.arguments = {}
        self.stack = []
        self.methods = methods
        self.classes = classes
        self.instructionset = instructions
        self.executed = []
        self.is_instance = None
        self.active_class = None
        self.temp = None


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

    
    def load_active_class(self, cls):
        if cls:
            self.active_class = cls
        else:
            raise simulation_exception("We always have to be in an active class")


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
            raise simulation_exception(f"The desired storage medium: '{storage}' is not part of the state machine")

    # Entry method for the state_machine
    def simulate(self, method, active_class):
        if active_class:
            self.load_active_class(active_class)
        else:
            self.load_active_class(method.get_class())

        self.load_arguments(method.arguments)
        self.load_locals(method.locals)
        self.is_instance = method.is_instance

        instructions = method.get_instructions()
        instruction_index = list(instructions.keys())
        index = 0
        return_val = None
        while index != len(instruction_index):
            current = instruction_index[index]
            action, value = self._simulate_(instructions[current])
            if action == Actions.JUMP:
                index = instruction_index.index(value)
            elif action == Actions.NOP:
                index += 1
            elif action == Actions.RETURN:
                return_val = value
                break

        return Counter([x.name for x in self.executed]), return_val


    # Simulates the individual steps of a CIL program
    def _simulate_(self, step):
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
                        raise simulation_exception(f"The field: '{field_name}' was not found in the class: '{self.active_class.name}'")

                # JUMP
                elif action == 'JUMP':
                    self.executed.append(current)
                    if 'COMPARE' in current.actions and current.can_jump:
                        return Actions.JUMP, current.args
                    elif 'COMPARE' not in current.actions and current.value:
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
                        raise simulation_exception(f"The field: '{field_name}' was not found in the class: '{cls.name}'")

                # COMPARE
                elif action == 'COMPARE':
                    res = current.compare()
                    self.stack.append(res)

                # COMPUTE
                elif action == 'COMPUTE':
                    res = current.compute()
                    self.stack.append(res)

                # CHANGE a single value in ARRAY
                elif action == 'STORE_ARR':
                    _ = current.mutate(store=True)

                # GET a single value in ARRAY
                elif action == 'LOAD_ARR':
                    val = current.mutate(store=False)
                    self.stack.append(val)

                # USED to determine the index within a jump table
                elif action == 'INDEX':
                    current.compute_index()

                # CREATE
                elif action == 'CREATE':
                    if current.name == 'newobj':
                        class_name, const = current.create_name()
                        cls = copy.deepcopy(self.classes[class_name])
                        current.value = f'{cls.name}::{const}'
                        self.temp = cls
                    elif current.name == 'newarr':
                        current.value = current.create_array()
                    else:
                        raise simulation_exception(f"The action create should not be used with other instructions than 'newobj' or 'newarr'")

                # CALL
                elif action == 'CALL':
                    return_val = None
                    if type(current.value) != str:
                        class_name, method = current.create_name()
                        current.value = f'{class_name}::{method}'
                    
                    current.add_values(self.stack)
                    if self.temp:
                        stack, return_val = current.call(self, self.temp)
                    else:
                        stack, return_val = current.call(self, self.active_class)

                    self.stack = stack
                    if return_val or return_val == 0:
                        self.stack.append(return_val)

                # CALLVIRT
                elif action == 'CALLVIRT':
                    class_name, method = current.create_name()
                    cls = self.stack.pop()
                    current.value = f'{cls.name}::{method}'
                    stack, return_val = current.call(self, cls)
                    
                    self.stack = stack
                    if return_val or return_val == 0:
                        self.stack.append(return_val)

                # RETURN
                elif action == 'RETURN':
                    self.executed.append(current)
                    if self.stack:
                        return Actions.RETURN, self.stack.pop()
                    else:
                        return Actions.RETURN, None

                else:
                    raise simulation_exception(f"The action '{action}' has not been implemented with the extra variables: '{current.location}'")

            self.executed.append(current)
            return Actions.NOP, None
        else:
            raise simulation_exception(f'The instruction "{step.name}" does not exist in the current configuration file')
