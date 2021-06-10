class Box():
    def __init__(self, value, data_type) -> None:
        self.value = value
        self.data_type = data_type

    def get_name(self):
        if type(self.data_type) == str:
            return self.data_type
        else:
            return self.data_type.get_name()

    def get_value(self):
        return self.value