from objects.class_container import class_container


class interface_class_container(class_container):
    def __init__(self, name, text, pos):
        super().__init__(name, text, pos)
        self.is_interface = True