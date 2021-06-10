class stacktrace():
    def __init__(self) -> None:
        self.executed = []
        self.stack = []
        self.next = None
        self.current_method = None

    
    def add_step(self, instruction, index, method):
        self.stack.append(f'{index}: {instruction}')
        self.next = instruction
        self.current_method = method


    def step_done(self):
        self.executed.append(self.next)
        self.next = None


    def get_executed(self):
        return self.executed


    def get_stacktrace(self, length=15):
        result = f'======{self.current_method.get_name()}======\n'
        for _ in range(length):
            if self.stack:
                result += f'{self.stack.pop()}\n'
        return result