# Represents a variable
from simulation_exception import simulation_exception
from argument_generator import can_generate, get_default, get_primitive


class variable():
    def __init__(self, name, type, is_valuetype = False):
        self.name = name
        self.type = type
        self.is_valuetype = is_valuetype
        self.value = None


    def set_value(self, value):
        self.value = value


    def set_default(self, storage, concrete = None):
        datatype = self.type
        if type(self.type) != str:
            datatype = datatype.get_name()
        if concrete:
            datatype = concrete

        # This means the type is generic (and to find the class, we remove the <generics>)
        if '`' in datatype and '<' in datatype:
            datatype = datatype.split('<')[0]

        if can_generate(datatype):
            default_value = get_default(datatype)
        elif datatype in storage.classes:
            default_value = storage.get_class_copy(datatype)
        elif self.is_valuetype:
            raise simulation_exception(f'The type: "{datatype}" is a valuetype, and therefore has to be instantiated. The class could not be found. Please import it')
        else:
            # Note that this is not totally understood. This statement could potentially break some programs (I do not know)
            return None
        self.set_value(default_value)


    def get_value(self):
        return self.value


    def get_name(self):
        if type(self.type) == str:
            return self.type
        else:
            return self.type.get_name()


    def get_datatype(self, storage):
        datatype = get_primitive(self.type, storage)
        if datatype:
            return datatype
        else:
            return self.type


    def __repr__(self) -> str:
        return f"('{self.value}' - {self.type})"
