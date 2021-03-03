from enum import Enum

# Describes a single branch statement
class Branch():
    def __init__(self, name, location, where_to, is_conditional = False):
        self.name = name
        self.location = location
        self.where_to = where_to
        self.is_conditional = is_conditional
        self.jump_type = 'JUMP'
        self.direction = self.get_direction()
        self.condition = None


    def get_direction(self):
        if self.name == 'switch':
            self.jump_type = 'SWITCH'
            return 'Forwards'

        if self.location < self.where_to:
            return 'Forwards'
        else:
            return 'Backwards'


    def __repr__(self) -> str:
        return f'({self.location}: {self.name} --> {self.where_to})'


class FlowType(Enum):
    LOOP = 0,
    IF = 1,
    IF_ELSE = 2,
    IF_ELIF = 3,
    IF_ELIF_ELSE = 4,
    SWITCH = 5 # Not considering this yet


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
        if branch.location > self.end:
            self.end = branch.location
        if branch.where_to > self.end:
            self.end = branch.where_to

    def __repr__(self) -> str:
        return f'({self.flow_type}: {self.start} --> {self.end})'


def is_branch(inst, lookup):
    if inst.name in lookup:
        return 'JUMP' in lookup[inst.name].actions
    else:
        return False


def branch_vicinity(location, branches, forwards = True):
    locations = [x.location for x in branches]
    for index, loc in enumerate(locations):
        if loc > location:
            return branches[index] if forwards else branches[index - 1]
    return None if forwards else branches[-1]


def get_flows(inst_list, branches, lookup):
    flows = []

    branch_list = branches
    for branch in branch_list:
        # Gets the next if-statement if available

        if branch.is_conditional:
            nextup = branch_vicinity(branch.where_to, branches, forwards=False)
            if branch.direction == 'Forwards' and nextup and not nextup.is_conditional:
                current = Flow(branch, FlowType.IF_ELSE)
                current.add_branch(nextup)
                branch_list.remove(nextup)
                head = nextup

                while True:
                    nextup = branch_vicinity(branch.where_to, branches)
                    if nextup and nextup.is_conditional and nextup.location < head.where_to:
                        current.set_type(FlowType.IF_ELIF)
                        current.add_branch(nextup)
                        branch_list.remove(nextup)
                        head = nextup

                        nextup = branch_vicinity(head.where_to, branches, forwards=False)
                        if head.direction == 'Forwards' and nextup and not nextup.is_conditional:
                            current.set_type(FlowType.IF_ELIF_ELSE)
                            current.add_branch(nextup)
                            branch_list.remove(nextup)
                            head = nextup
                        else:
                            break
                    else:
                        break

                flows.append(current)
            else:
                current = Flow(branch, FlowType.IF)
                flows.append(current)
        else:
            nextup = branch_vicinity(branch.where_to, branches)
            if nextup and nextup.direction == 'Backwards':
                current = Flow(branch, FlowType.LOOP)
                current.add_branch(nextup)
                branch_list.remove(nextup)
                flows.append(current)
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