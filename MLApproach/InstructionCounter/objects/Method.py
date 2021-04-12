from variable import variable
from instruction import instruction
from objects.Instruction import Instruction
from objects.Locals import Locals


class Method():
    def __init__(self, method_attr, call_conv, return_type, method_name, gens, params):
        self.attributes = method_attr
        self.call_convensions = call_conv
        self.return_type = return_type
        if type(method_name) == list:
            self.name = self.combine_name(method_name)
        else:
            self.name = method_name
        self.generics = self.load_generics(gens)
        self.is_generic = bool(gens) == True
        self.is_entry = False
        self.is_instance = 'instance' in call_conv
        self.parameters = params
        self.instructions = {}
        self.data = {}
        self.locals = None
        self.__cls = None
        self.cls = self.__cls
        self.__arguments = self.get_arguments()
        self.arguments = None
        self.gen2type = {}
        self.type2gen = {}


    def load_generics(self, gens):
        if gens:
            return ['!!' + x.get_name() for x in gens]
        else:
            return []


    def set_types(self, concrete):
        for idx, gen in enumerate(self.generics):
            conc = concrete[idx].get_name().replace('!!', '')
            self.gen2type[gen] = conc
            self.type2gen[conc] = gen


    def combine_name(self, lst):
        finished_name = ''
        for elem in lst:
            if type(elem) == str:
                finished_name += elem
            else:
                finished_name += elem.get_name()
        return finished_name


    def get_arguments(self):
        return {idx: x.get_name() for idx, x in enumerate(self.parameters)}


    def get_parameter_names(self):
        return {x.parameter_name: idx for idx, x in enumerate(self.parameters)}


    def get_concrete_type(self, generic):
        if generic in self.generics:
            return self.gen2type[generic]
        else:
            return self.cls.get_concrete_type(generic)


    def set_parameters(self, args):
        parameter_list = {}
        for key, value in self.get_arguments().items():
            if '!' in value:
                value = self.get_concrete_type(value)
            var = variable(key, value)
            var.value = args.pop()
            parameter_list[key] = var
        self.arguments = parameter_list


    def clear(self):
        self.cls = self.__cls
        self.arguments = self.__arguments


    def add_instruction(self, instruction):
        self.instructions[instruction.location] = instruction


    def set_data(self):
        for inst in self.instructions.values():
            with_data = instruction.create(inst.name, inst.data)
            self.data[inst.location] = with_data


    def get_instructions(self):
        if self.data:
            return self.data
        else:
            self.set_data()
            return self.data


    def get_class(self):
        return self.cls


    def set_class(self, cls):
        self.__cls = cls
        self.cls = cls


    def __get_type(_, field):
        return ', '.join(x.get_name() for x in field)


    def get_name(self):
        method_name = self.name
        if self.is_generic:
            method_name += f'<{", ".join(self.generics)}>'
        method_name += f'({self.__get_type(self.parameters)})'
        return method_name


    def get_full_name(self):
        return f'{self.cls.get_name()}::{self.get_name()}'


    @classmethod
    def add_members(cls, method, members):
        for member in members:
            if isinstance(member, Instruction):
                method.add_instruction(member)
            elif isinstance(member, Locals):
                method.locals = member
            elif member == '.entrypoint':
                method.is_entry = True
        return method


    def __repr__(self) -> str:
        return f'{self.name} - {type(self)}'