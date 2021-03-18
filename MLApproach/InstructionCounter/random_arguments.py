import random
from simulation_exception import simulation_exception


def random_bool():
    return random.randint(0, 1)


def random_int32():
    return random.randint(-2147483648, 2147483647)


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


def create_random_argument(datatype):
    if datatype == 'void':
        return None
    elif datatype == 'bool':
        return random_bool()
    elif datatype == 'int32':
        return random_int32()
    elif datatype == 'string':
        return random_string()
    else:
        raise simulation_exception(f"The type '{datatype}' has no random implementation")