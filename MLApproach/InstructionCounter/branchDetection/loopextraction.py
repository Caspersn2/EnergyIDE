from enum import Enum

# Describes a single branch statement
class Branch():
    def __init__(self, name, location, where_to, is_conditional = False):
        self.name = name
        self.location = location
        self.where_to = where_to
        self.is_conditional = is_conditional
        self.direction = self.get_direction()
        self.condition = None


    def get_direction(self):
        if self.name == 'switch':
            return 'Forwards'

        if self.location < self.where_to:
            return 'Forwards'
        else:
            return 'Backwards'


    def __repr__(self) -> str:
        return f'({self.location}: {self.name} --> {self.where_to})'


class FlowTypes(Enum):
    LOOP = 0,
    IF = 1,
    IF_ELSE = 2,
    IF_ELIF_ELSE = 3
    SWITCH = 4 # Not considering this yet


# Describes a single flow structure (LOOP or IF)
class Flow():
    def __init__(self, branch, flow_type):
        self.branches = [branch]
        self.start = branch.location
        self.end = branch.where_to
        self.flow_type = flow_type

    def set_type(self, flow_type):
        self.flow_type = flow_type

    def add_branch(self, branch):
        self.branches.append(branch)
        self.end = branch

    def __repr__(self) -> str:
        return f'({self.flow_type}: {self.start} --> {self.end})'


def is_branch(inst, lookup):
    if inst.name in lookup:
        return 'JUMP' in lookup[inst.name].actions
    else:
        return False


def get_flows(inst_list, branches, lookup):
    flows = {}
    keys = list(inst_list.keys())

    for index, branch in enumerate(branches):
        if branch.direction == 'Forwards':
            flows[branch.location] = Flow(branch, FlowTypes.IF)
        else:
            index = keys.index(branch.where_to)
            previous = keys[index - 1]
            prev_inst = inst_list[previous]
            if is_branch(prev_inst, lookup):
                current = flows[previous]
                current.set_type(FlowTypes.LOOP)
                current.add_branch(branch.location)
    return flows


def get_branches(inst_list, lookup):
    branch_commands = []
    for location, inst in inst_list.items():
        if inst.name in lookup and is_branch(inst, lookup):
            is_conditional = inst.name not in ['br', 'br.s']
            current = Branch(inst.name, location, inst.args, is_conditional)
            branch_commands.append(current)
    return branch_commands


# Start method
def identify_flows(method, lookup):
    instruction_list = method.data
    branches = get_branches(instruction_list, lookup)
    flows = get_flows(instruction_list, branches, lookup)
    print(flows)