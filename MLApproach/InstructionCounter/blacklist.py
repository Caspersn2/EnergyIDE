class_blacklist = {
    '[System.Console]System.Console'
}

method_blacklist = {
    '[System.Runtime]System.Object::.ctor()',
    '[System.Runtime]System.String::Format(string, object)',
    '[System.Runtime]System.String::Format(string, object, object)'
}

def contains(invocation):
    class_name, _ = invocation.split('::')
    if class_name in class_blacklist:
        return True
    elif invocation in method_blacklist:
        return True
    else:
        return False