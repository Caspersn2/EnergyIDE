import random
from simulation_exception import simulation_exception


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
    return generate_string(random.randint(0, 10000))


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
    if datatype == 'bool' or datatype == 'int32' or datatype == 'char':
        return int(value)
    elif datatype == 'float32' or datatype == 'float64':
        return float(value)
    else:
        return value


def create_random_argument(datatype):
    if datatype == 'void':
        return None
    elif datatype == 'char':
        return random_char()
    elif datatype == 'bool':
        return random_bool()
    elif datatype == 'int32':
        return random_int32()
    elif datatype == 'float32':
        return random_double()
    elif datatype == 'float64':
        return random_double()
    elif datatype == 'string':
        return random_string()
    else:
        raise simulation_exception(f"The type '{datatype}' has no random implementation")