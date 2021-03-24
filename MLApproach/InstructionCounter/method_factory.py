from method import method, generic_method

def create_method(name, cls, prototype, return_type, text):
    if '<' in prototype and '>' in prototype:
        return generic_method(name, cls, prototype, return_type, text)
    else:
        return method(name, cls, prototype, return_type, text)