class dummy_instruction():
    def __init__(self, name) -> None:
        self.name = name

    def execute(self, storage):
        raise NotImplementedError(f'The instruction {self.name} has not been implemented')