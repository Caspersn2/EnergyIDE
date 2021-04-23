# Represents a variable
class variable():
    def __init__(self, name, type):
        self.name = name
        self.type = type
        self.value = None


    def set_value(self, value):
        self.value = value


    def get_value(self):
        return self.value


    def __repr__(self) -> str:
        return f"('{self.value}' - {self.type})"