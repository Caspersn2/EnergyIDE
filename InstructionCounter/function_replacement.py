import math
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


def indexof(val, char, start, count = None):
    end = start + count if count else -1
    if chr(char) in val[start:end]:
        return val.index(chr(char), start, end)
    else:
        return -1


def join(values):
    strings = []
    for val in values:
        if type(val) == str:
            strings.append(val)
        else:
            strings.append(val.value)
    return ''.join(strings)


def trim_start(string):
    stripped = string.lstrip()
    tmp = variable(None, get_system_name('string'))
    tmp.value = stripped
    return tmp

def trim_end(string):
    stripped = string.rstrip()
    tmp = variable(None, get_system_name('string'))
    tmp.value = stripped
    return tmp

def trim(string):
    stripped = string.strip()
    tmp = variable(None, get_system_name('string'))
    tmp.value = stripped
    return tmp


replacement = {
    'System.Console::Read()': lambda _, __: random_char(),
    'System.Console::ReadLine()': lambda _, __: random_string(),

    'System.Number::UInt32ToDecStr(uint32)': lambda args, _: str(args[0]),
    'System.Number::UInt64ToDecStr(uint64, int32)': lambda args, _: str(args[0]),

    # ALL MAJOR STRING OPERATIONS HAVE TO BE PERFORMED HERE
    'System.String::Concat(string, string)': lambda args, _: join(args),
    'System.String::Concat(string, string, string)': lambda args, _: join(args),
    'System.String::Concat(string, string, string, string)': lambda args, _: join(args),
    'System.String::Concat(string[])': lambda args, _: join(args[0]),
    'System.String::Format(string, object)': lambda _, __: random_string(),
    'System.String::Format(string, object, object)': lambda _, __: random_string(),
    'System.String::get_Length()': lambda _, storage: len(storage.active_value),
    'System.String::Contains(string)': lambda args, storage: args[0].value in storage.active_value,
    'System.String::EqualsHelper(string, string)': lambda args, _: args[0] == args[1],
    'System.String::PadLeft(int32, char)': lambda args, storage: pad_left(storage.active_value, args[1], args[0]),
    'System.String::Replace(string, string)': lambda args, storage: replace(storage.active_value, args[1], args[0]),
    'System.String::IndexOf(char, int32)': lambda args, storage: indexof(storage.active_value, args[1], args[0]),
    'System.String::IndexOf(char, int32, int32)': lambda args, storage: indexof(storage.active_value, args[2], args[1], args[0]),
    'System.String::TrimStart()': lambda _, storage: trim_start(storage.active_value),
    'System.String::TrimEnd()': lambda _, storage: trim_end(storage.active_value),
    'System.String::Trim()': lambda _, storage: trim(storage.active_value),

    # THE INTIRE MATH LIBRARY IS INTRINSICS
    'System.Math::Abs(float32)': lambda args, _: abs(args[0]),
    'System.Math::Abs(float64)': lambda args, _: abs(args[0]),
    'System.Math::Sqrt(float64)': lambda args, _: math.sqrt(args[0]),
    'System.Math::Sin(float64)': lambda args, _: math.sin(args[0]),
    'System.Math::Cos(float64)': lambda args, _: math.cos(args[0]),
    'System.Math::Tan(float64)': lambda args, _: math.tan(args[0]),
    'System.Math::Asin(float64)': lambda args, _: math.asin(args[0]),
    'System.Math::Acos(float64)': lambda args, _: math.acos(args[0]),
    'System.Math::Atan(float64)': lambda args, _: math.atan(args[0]),

    'System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!!T>(!!0[])': lambda args, _: args[0],
    'System.ByReference`1<!T>::.ctor(!T&)': lambda args, _: args[0]
}


def call(invocation, args, storage):
    return replacement[invocation](args, storage)


def contains(invocation):
    return invocation in replacement