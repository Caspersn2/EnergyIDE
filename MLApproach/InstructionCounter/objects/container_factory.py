from objects.class_container import class_container
from objects.generic_class_container import generic_class_container
from objects.delegate_class_container import delegate_class_container, generic_delegate_class_container
from objects.interface_class_container import interface_class_container


def create_class_container(name, text, position, super_class, keywords):
    if 'interface' in keywords:
        return interface_class_container(name, text, position)
    elif 'MulticastDelegate' in super_class and '`' in name:
        return generic_delegate_class_container(name, text, position)
    elif 'MulticastDelegate' in super_class:
        return delegate_class_container(name, text, position)
    elif '`' in name:
        return generic_class_container(name, text, position)
    else:
        return class_container(name, text, position)