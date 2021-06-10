from .result import Result
class CsvLine():
    """
    A class representing a single line in a CSV file
    """

    def __init__(self, result: Result):
        self.label = result.label
        self.duration = result.duration
        self.pkg = result.pkg
        self.dram = result.dram
        self.temp = result.temp

    def print(self):
        """
        Takes all of the values in a single CSV line and joins them with ';' 
        """
        return "{0};{1};{2};{3};{4}".format(self.label, self.duration, self.pkg, self.dram, self.temp)


class CSV_Output():
    """
    Our version of the CSV output file functionality from the pyRAPL library
    """
    def __print_header__(self):
        with open(self.filepath, "w+") as csvfile:
            csvfile.write("label;duration;pkg;ram;temp\n")

    def __init__(self, filepath: str):
        self.filepath = filepath
        self.measurements = []
        self.__print_header__()

    def add(self, result: Result):
        measure = CsvLine(result)
        self.measurements.append(measure)

    def save(self):
        """
        Prints all of the stored measurements into a single CSV file
        """
        with open(self.filepath, "a+") as csvfile:
            for measure in self.measurements:
                csvfile.write("{0}\n".format(measure.print()))
            self.measurements = []
