class simulation_exception(Exception):
    def __init__(self, name) -> None:
        super().__init__(f'The instruction "{name}" has not been implemented')