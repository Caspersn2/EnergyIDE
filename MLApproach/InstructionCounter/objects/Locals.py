class Local():
    def __init__(self, index, type_name, name = None):
        self.index = index
        self.type_name = type_name
        self.name = name

    def get_name(self):
        return self.type_name.get_name()

    @classmethod
    def new(cls, index, l_datatype, name):
        name = name[0] if name else None
        return Local(index, l_datatype, name)



class Locals():
    def __init__(self, is_init, locals_lst):
        self.is_init = True if is_init else False
        self.local_storage = locals_lst

    def get_local(self, idx):
        return self.local_storage[idx]
