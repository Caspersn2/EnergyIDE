class_blacklist = {
    'System.Console'
}

method_blacklist = {
    'System.Object::.ctor()'
}

def contains(invocation):
    class_name, _ = invocation.split('::')
    if class_name in class_blacklist:
        return True
    elif invocation in method_blacklist:
        return True
    else:
        return False