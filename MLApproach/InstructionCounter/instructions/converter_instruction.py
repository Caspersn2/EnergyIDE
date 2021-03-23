from simulation_exception import simulation_exception
from instruction import instruction
from action_enum import Actions


class convert_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return convert_instruction(name)

    @classmethod
    def keys(cls):
        return ['conv.r4', 'conv.r8', 'conv.r.un']

    def convert(self, name):
        return {
            'conv.r4': lambda x: float(x),
            'conv.r8': lambda x: float(x),
            'conv.r.un': lambda x: float(x)
        }.get(name, simulation_exception(name))

    def execute(self, storage):
        value = storage.pop_stack()
        converted = self.convert(self.name)(value)
        storage.push_stack(converted)
