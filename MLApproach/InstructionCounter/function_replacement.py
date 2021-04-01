from variable import variable
import argument_generator

replacement = {
    "System.String::FastAllocateString(int32)": lambda _, storage: argument_generator.get_primitive('string', storage)
}

def call(invocation, args, storage):
    return replacement[invocation](args, storage)


def contains(invocation):
    return invocation in replacement