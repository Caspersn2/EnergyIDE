class position():
    def __init__(self, start, end):
        self.start = start
        self.end = start + end

    def contains(self, pos):
        return self.start < pos and self.end > pos
