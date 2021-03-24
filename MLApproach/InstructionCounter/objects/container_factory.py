from objects.class_container import class_container
from objects.generic_class_container import generic_class_container


def create_class_container(name, text, start):
    if '`' in name:
        return generic_class_container(name, text, start)
    else:
        return class_container(name, text, start)