class Field():
    def __init__(self, attrs, f_datatype, name, value):
        self.attributes = attrs
        self.is_static = 'static' in attrs
        self.datatype = f_datatype
        self.name = name
        self.value = value[0] if value else None

    def set_value(self, value):
        self.value = value

    def has_value(self):
        return self.value is not None

    def get_value(self):
        return self.value
