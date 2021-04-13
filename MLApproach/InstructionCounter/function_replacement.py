from variable import variable
import argument_generator

replacement = {
    "System.Number::UInt32ToDecStr(uint32)": lambda args, _: str(args[0]),
    'System.String::Concat(string, string)': lambda args, _: ''.join(args[0]),
    'System.String::Concat(string, string, string)': lambda args, _: ''.join(args[0]),
    'System.String::Concat(string, string, string, string)': lambda args, _: ''.join(args[0]),
    'System.String::Concat(string[])': lambda args, _: ''.join(args[0]),
    'System.String::Format(string, object)': lambda _, __: argument_generator.random_string(),
    'System.String::Format(string, object, object)': lambda _, __: argument_generator.random_string(),
    'System.String::get_Length()': lambda _, storage: len(storage.active_value),
    'System.String::EqualsHelper(string, string)': lambda args, _: args[0] == args[1]
}

def call(invocation, args, storage):
    return replacement[invocation](args, storage)


def contains(invocation):
    return invocation in replacement