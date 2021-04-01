replacement = {
    "System.String::FastAllocateString(int32)": lambda x: '' * x[0]
}

def call(invocation, args):
    if invocation in replacement:
        return replacement[invocation](args)
    else:
        return None


def contains(invocation):
    return invocation in replacement