class DataType():
    def __init__(self, type_name):
        self.type_name = type_name

    def get_name(self):
        return self.type_name

    @classmethod
    def new(cls, type_name):
        datatype = type_name
        if type(type_name) == list:
            datatype = ''
            for elem in type_name:
                if type(elem) == str:
                    datatype += elem
                else:
                    datatype += elem.get_name()
        return DataType(datatype)



class GenericMethodType(DataType):
    def __init__(self, type_name):
        if type(type_name) == list:
            type_name = ''.join(type_name)
        super().__init__(type_name)



class GenericClassType(DataType):
    def __init__(self, type_name):
        if type(type_name) == list:
            type_name = ''.join(type_name)
        super().__init__(type_name)



class Parameter():
    def __init__(self, type_name, parameter_name):
        self.type_name = type_name
        self.parameter_name = parameter_name

    def get_name(self):
        return self.type_name.get_name()

    @classmethod
    def new(cls, p_datatype, name):
        name = name[0] if name else None
        if type(p_datatype) == list:
            datatype = p_datatype[0]
            for d_type in p_datatype[1:]:
                datatype.type_name += d_type
            p_datatype = datatype
        return Parameter(p_datatype, name)



class GenericType():
    def __init__(self, type_name, params):
        self.type_name = type_name
        self.params = params

    def get_name(self):
        return f'{self.type_name.get_name()}<{", ".join(x.get_name() for x in self.params)}>'

    @classmethod
    def new(cls, type_name, params):
        return GenericType(type_name, params)



class ArrayType():
    def __init__(self, type_name, bound):
        self.type_name = type_name
        self.bound = bound

    def get_name(self):
        return f'{self.type_name}[]'

    @classmethod
    def new(cls, arr_datatype, bound):
        return ArrayType(arr_datatype.type_name, bound)
