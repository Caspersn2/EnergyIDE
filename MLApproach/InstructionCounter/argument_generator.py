import random
import copy
from simulation_exception import simulation_exception


primitive = ['char', 'bool', 'int32', 'uint32', 'float32', 'float64', 'string']
array_primitives = [f'{x}[]' for x in primitive]


def random_bool():
    return random.randint(0, 1)


def random_int32():
    return random.randint(-2147483648, 2147483647)


def random_char():
    return random.randint(-127, 128)


def random_double():
    mantissa = (random.random() * 2.0) - 1.0
    exponent = 2.0**random.randint(-126,127)
    return mantissa * exponent


def random_string():
    return generate_string(random.randint(0, 100))


def generate_string(number):
    symbols = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 
        'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'æ', 'ø',
         'å', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ' ', '-', ',', '.']
    
    string = ''
    for _ in range(number):
        index = random.randint(0, len(symbols) - 1)
        string += symbols[index]
    return string


def convert_argument(value, datatype):
    if datatype in ['bool', 'int32', 'uint32', 'char']:
        return int(value)
    elif datatype in ['float32', 'float64']:
        return float(value)
    else:
        return value



def can_generate(datatype):
    return datatype in primitive or datatype in array_primitives


def get_default(datatype):
    if can_generate(datatype):
        if datatype in ['char', 'int32', 'uint32', 'bool']:
            return 0
        elif datatype in ['float32', 'float64']:
            return 0.0
        elif datatype in ['string']:
            return ''
        elif '[]' in datatype:
            return []
    else:
        raise simulation_exception(f'The type: "{datatype}" is not supported for default value')



def get_primitive(d_type, storage):
    datatype = d_type
    if type(datatype) != str:
        datatype = d_type.get_name()
        if type(datatype) != str:
            datatype = datatype.datatype

    if datatype == 'int32':
        return copy.deepcopy(storage.get_class('System.Int32'))
    elif datatype == 'uint32':
        return copy.deepcopy(storage.get_class('System.UInt32'))
    elif datatype == 'string':
        return copy.deepcopy(storage.get_class('System.String'))
    else:
        return None


def create_random_argument(datatype):
    data_type = datatype.get_name()
    if data_type == 'void':
        return None
    elif data_type == 'char':
        return random_char()
    elif data_type == 'bool':
        return random_bool()
    elif data_type == 'int32':
        return random_int32()
    elif data_type == 'float32':
        return random_double()
    elif data_type == 'float64':
        return random_double()
    elif data_type == 'string':
        return random_string()
    else:
        raise simulation_exception(f"The type '{data_type}' has no random implementation")