from objects.class_container import class_container
from objects.generic_class_container import generic_class_container
from objects.delegate_class_container import delegate_class_container, generic_delegate_class_container


def create_class_container(name, text, position, super_class):
    if 'MulticastDelegate' in super_class and '`' in name:
        return generic_delegate_class_container(name, text, position)
    if 'MulticastDelegate' in super_class:
        return delegate_class_container(name, text, position)
    if '`' in name:
        return generic_class_container(name, text, position)
    else:
        return class_container(name, text, position)