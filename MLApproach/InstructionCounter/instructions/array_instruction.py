from simulation_exception import simulation_exception
from instruction import instruction
from action_enum import Actions
import utilities


class newarr_instruction(instruction):
    def __init__(self, name, datatype):
        self.datatype = datatype
        super().__init__(name)

    def get_default(self, datatype):
        return {
            'System.Boolean': 0
        }.get(datatype, simulation_exception(datatype))

    @classmethod
    def create(cls, name, elements):
        datatype = utilities.remove_library_names(' '.join(elements))
        return newarr_instruction(name, datatype)

    @classmethod
    def keys(cls):
        return ['newarr']

    def execute(self, storage):
        num = storage.pop_stack()
        arr = [self.get_default(self.datatype)] * num
        storage.push_stack(arr)
        return Actions.NOP, None



class array_update_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return array_update_instruction(name)

    @classmethod
    def keys(cls):
        return ['stelem.i', 'stelem.i1', 'stelem.i2', 'stelem.i4', 'stelem.i8', 'stelem.r4', 'stelem.r8']

    def execute(self, storage):
        value = storage.pop_stack()
        index = storage.pop_stack()
        arr = storage.pop_stack()
        arr[index] = value
        return Actions.NOP, None



class array_retrieval_instruction(instruction):
    def __init__(self, name):
        super().__init__(name)

    @classmethod
    def create(cls, name, _):
        return array_retrieval_instruction(name)

    @classmethod
    def keys(cls):
        return ['ldelem', 'ldelem.i', 'ldelem.i1', 'ldelem.i2', 'ldelem.i4', 'ldelem.i8', 'ldelem.r4', 'ldelem.r8', 'ldelem.u1', 'ldelem.u2', 'ldelem.u4']

    def execute(self, storage):
        index = storage.pop_stack()
        arr = storage.pop_stack()
        value = arr[index]
        storage.push_stack(value)
        return Actions.NOP, None