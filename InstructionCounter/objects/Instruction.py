class Instruction():
    def __init__(self, location, data):
        self.location = 'IL_' + location
        name, *data = data.split()
        self.name = name
        self.data = data