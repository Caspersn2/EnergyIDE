class delegate():
    def add_method(self, args):
        method = args[0]
        self.delegate_method = method


    def get_method(self, _, __):
        self.delegate_method.set_class(self)
        return self.delegate_method