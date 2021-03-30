from objects.class_container import class_container
from objects.position import position


class library_container(class_container):
    def __init__(self, name):
        super().__init__(name, '', position(0,0))