from variable import variable
from argument_generator import get_system_name, random_string, random_char

def pad_left(value, num, char):
    diff = num - len(value)
    if diff > 0:
        value = (chr(char) * num) + value
        tmp = variable(None, get_system_name('string'))
        tmp.value = value
        return tmp


def replace(val, old, replacement):
    val = val.replace(old.value, replacement.value)
    tmp = variable(None, get_system_name('string'))
    tmp.value = val
    return tmp


replacement = {
    'System.Console::Read()': lambda _, __: random_char(),
    "System.Number::UInt32ToDecStr(uint32)": lambda args, _: str(args[0]),
    'System.String::Concat(string, string)': lambda args, _: ''.join(args[0]),
    'System.String::Concat(string, string, string)': lambda args, _: ''.join(args[0]),
    'System.String::Concat(string, string, string, string)': lambda args, _: ''.join(args[0]),
    'System.String::Concat(string[])': lambda args, _: ''.join(args[0]),
    'System.String::Format(string, object)': lambda _, __: random_string(),
    'System.String::Format(string, object, object)': lambda _, __: random_string(),
    'System.String::get_Length()': lambda _, storage: len(storage.active_value),
    'System.String::EqualsHelper(string, string)': lambda args, _: args[0] == args[1],
    'System.String::PadLeft(int32, char)': lambda args, storage: pad_left(storage.active_value, args[1], args[0]),
    'System.String::Replace(string, string)': lambda args, storage: replace(storage.active_value, args[1], args[0])
}


def call(invocation, args, storage):
    return replacement[invocation](args, storage)


def contains(invocation):
    return invocation in replacement