class Result():
    def __init__(self, label: str, result_line: str):
        self.label = label
        duration, pkg, dram, temp = result_line.split(';')
        self.duration = float(duration.replace('.','').replace(',','.'))
        self.pkg = float(pkg.replace('.','').replace(',','.'))
        self.dram = float(dram.replace('.','').replace(',','.'))
        self.temp = float(temp.replace('.','').replace(',','.'))
