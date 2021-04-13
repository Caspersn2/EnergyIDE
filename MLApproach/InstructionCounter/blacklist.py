class_blacklist = {}

method_blacklist = {
    'System.Object::.ctor()',
    'System.Console::Write(string, object)',
    'System.Console::WriteLine(string)',
    'System.Console::WriteLine(object)',
    'System.Console::WriteLine(bool)',
    'System.Console::WriteLine(int32)',
    'System.Console::WriteLine(float64)'
}

def contains(invocation):
    class_name, _ = invocation.split('::')
    if class_name in class_blacklist:
        return True
    elif invocation in method_blacklist:
        return True
    else:
        return False