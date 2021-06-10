def combine_type_name(type_name):
    datatype = type_name
    if type(type_name) == list:
        datatype = ''
        for elem in type_name:
            if type(elem) == str:
                datatype += elem
            else:
                datatype += elem.get_name()
    return datatype


class DataType():
    def __init__(self, type_name, is_valuetype):
        self.type_name = type_name
        self.is_value_type = is_valuetype

    def get_name(self):
        return self.type_name

    def is_valuetype(self):
        return self.is_value_type

    def set_name(self, val):
        self.type_name += val

    @classmethod
    def new(cls, class_or_value, type_name):
        datatype = combine_type_name(type_name)
        
        if 'class' in class_or_value:
            return DataType(datatype, False)
        else:
            return DataType(datatype, True)

    @classmethod
    def new_primitive(cls, type_name):
        return DataType(type_name, True)



class GenericMethodType(DataType):
    def __init__(self, type_name):
        is_valuetype = type_name.is_valuetype() if type(type_name) == DataType else False
        data_type = combine_type_name(type_name)
        super().__init__(data_type, is_valuetype)



class GenericClassType(DataType):
    def __init__(self, type_name):
        is_valuetype = type_name.is_valuetype() if type(type_name) == DataType else False
        data_type = combine_type_name(type_name)
        super().__init__(data_type, is_valuetype)



class Parameter():
    def __init__(self, type_name, parameter_name):
        self.type_name = type_name
        self.parameter_name = parameter_name

    def get_name(self):
        return self.type_name.get_name()

    def is_valuetype(self):
        return self.type_name.is_valuetype()

    @classmethod
    def new(cls, p_datatype, name):
        name = name[0] if name else None
        if type(p_datatype) == list:
            tmp = DataType(p_datatype[0].get_name(), p_datatype[0].is_valuetype())
            for d_type in p_datatype[1:]:
                if type(d_type) == str:
                    tmp.set_name(d_type)
                else:
                    tmp.set_name(d_type.get_name())
            p_datatype = tmp
        return Parameter(p_datatype, name)



class GenericType():
    def __init__(self, type_name, params):
        self.type_name = type_name
        self.params = params

    def get_name(self):
        return f'{self.type_name.get_name()}<{", ".join(x.get_name() for x in self.params)}>'

    def is_valuetype(self):
        return self.type_name.is_valuetype()

    @classmethod
    def new(cls, type_name, params):
        return GenericType(type_name, params)



class ArrayType():
    def __init__(self, type_name, bound):
        self.type_name = type_name
        self.bound = bound

    def get_name(self):
        return f'{self.type_name.get_name()}[]'

    def is_valuetype(self):
        return self.type_name.is_valuetype()

    @classmethod
    def new(cls, arr_datatype, bound):
        return ArrayType(arr_datatype, bound)