from simulation_exception import simulation_exception
from objects.Method import Method
from objects.Field import Field
from variable import variable


class Container():
    def __init__(self, cls_attr, cls_name, gens, exts, impl):
        self.attributes = cls_attr
        self.name = cls_name
        self.generics = self.load_generics(gens)
        self.is_interface = 'interface' in cls_attr
        self.is_generic = bool(gens) == True
        self.is_entry = False
        self.extends = exts
        self.implements = impl
        self.parent_class = None
        self.methods = {}
        self.fields = {}
        self.static_fields = {}
        self.nested = {}
        self.state = {}
        self.gen2type = {}
        self.type2gen = {}


    def get_state(self, key):
        return self.state[key]


    def set_types(self, concrete):
        for idx, gen in enumerate(self.generics):
            conc = concrete[idx].get_name()
            self.gen2type[gen] = conc
            self.type2gen[conc] = gen


    def add_method(self, method):
        self.is_entry |= method.is_entry
        self.methods[method.get_name()] = method


    def load_generics(self, generics):
        if generics:
            gens = generics[0]
            return ['!' + x.get_name() for x in gens]
        else:
            return []


    def get_concrete_type(self, generic):
        if generic in self.generics:
            return self.gen2type[generic]
        else:
            raise simulation_exception(f'The generic type: "{generic}" was not found in the class')


    def get_method_gen(self, name, generics):
        found = None
        for method in self.methods.values():
            if method.is_generic and len(method.generics) == len(generics):
                found = method
                
        if found:
            return found.generics
        else:
            return []


    def replace_class_generics(self, real_name):
        for idx, gen_type in enumerate(self.generics):
            gen_idx = '!' + str(idx)
            if gen_idx in real_name:
                real_name = real_name.replace(gen_idx, gen_type)
        return real_name


    def replace_method_generics(self, real_name, method_gen):
        for idx, gen_type in enumerate(self.get_method_gen(real_name, method_gen)):
            gen_idx = '!!' + str(idx)
            meth_gen = method_gen[idx].get_name()
            if gen_idx in real_name:
                real_name = real_name.replace(gen_idx, gen_type)
            if meth_gen in real_name:
                real_name = real_name.replace(meth_gen, gen_type)
        return real_name


    def get_generic_method(self, full_name, class_gen, method_gen):
        real_name = full_name.split('::')[-1]
        if class_gen:
            self.set_types(class_gen)
            real_name = self.replace_class_generics(real_name)
        if method_gen:
            real_name = self.replace_method_generics(real_name, method_gen)
        method = self.get_method(None, real_name)
        method.set_types(method_gen)
        return method

    
    def get_generic_method_name(self, full_name, class_gen):
        real_name = full_name
        if class_gen:
            self.set_types(class_gen)
            real_name = self.replace_class_generics(real_name)
        return real_name


    def get_method(self, class_instance, method_name):
        if method_name in self.methods:
            return self.methods[method_name]
        else:
            raise simulation_exception(f'The method: "{method_name}" was not found in the class')


    def add_field(self, field):
        if field.is_static:
            self.static_fields[field.name] = field
        else:
            self.fields[field.name] = field
            self.state[field.name] = variable(field.name, field.datatype)


    def set_parent(self, cls):
        self.parent_class = cls


    def add_class(self, cls):
        cls.set_parent(self)
        self.nested[cls.name] = cls


    def get_nested(self):
        nested = {}
        for inner in self.nested.values():
            nested[inner.get_simple_name()] = inner
            nested = {**nested, **inner.get_nested()}
        return nested


    def get_simple_name(self):
        return self.name


    def get_name(self):
        name = ''
        if self.parent_class:
            name += self.parent_class.get_name() + '/'
        name += self.name
        if self.is_generic:
            name += f'<{", ".join(self.generics)}>'
        return name


    @classmethod
    def add_members(cls, container, members):
        for member in members:
            if isinstance(member, Method):
                member.set_class(container)
                container.add_method(member)
            elif isinstance(member, Field):
                container.add_field(member)
            elif isinstance(member, Container):
                container.add_class(member)
        return container


    @classmethod
    def new(cls, cls_attr, cls_name, gens, exts, impl):
        if 'interface' in cls_attr:
            return InterfaceContainer(cls_attr, cls_name, gens, exts, impl) 
        elif 'System.MulticastDelegate' in exts:
            return DelegateContainer(cls_attr, cls_name, gens, exts, impl)
        elif 'System.ValueType' in exts:
            return StructContainer(cls_attr, cls_name, gens, exts, impl)
        else:
            return Container(cls_attr, cls_name, gens, exts, impl)


    def __repr__(self) -> str:
        return f'{self.name} - {type(self)}'



class DelegateContainer(Container):
    def __init__(self, cls_attr, cls_name, gens, exts, impl):
        super().__init__(cls_attr, cls_name, gens, exts, impl)
        self.delegate_method = None


    def set_method(self, method):
        self.delegate_method = method


    def get_method(self, _, __):
        return self.delegate_method



class InterfaceContainer(Container):
    def __init__(self, cls_attr, cls_name, gens, exts, impl):
        super().__init__(cls_attr, cls_name, gens, exts, impl)



class StructContainer(Container):
    def __init__(self, cls_attr, cls_name, gens, exts, impl):
        super().__init__(cls_attr, cls_name, gens, exts, impl)