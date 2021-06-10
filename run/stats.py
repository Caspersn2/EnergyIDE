import math
from .result import Result

class Stats():
    """A class to simplify the statistical computations"""
    def __init__(self, output_file, typ, measurement):
        name = output_file.split(".csv")[0]
        self.file_name = name + "_stats_{0}.csv".format(typ)
        with open(self.file_name, "w") as stats_file:
            stats_file.write("Name;Sample Mean ({0});Standard Deviation({0});Standard Error ({0});Standard Error (%);Runs\n".format(measurement))
        

    def Clear(self):
        """After each benchmark, the instance values can be cleared using this function"""
        self.measures = []
        self.mean = 0
        self.sd = 0
        self.error_margin = 0
        self.error_percent = 0

    def add_measurement(self, measure):
        """A small method to add measurements to the instance"""
        self.measures.append(measure)

    def compute_results(self):
        """Calls all of the statistical calculation functions in the right order (Results will occupy the instance variables)"""
        self.mean = self.get_mean()
        self.sd = self.get_deviation()
        self.error_margin = self.get_error_margin()
        self.error_percent = self.get_error_percent()

    def get_mean(self):
        """Will return the mean value, based on the current measurements"""
        return sum(self.measures) / len(self.measures)

    def get_deviation(self):
        """Will return the standard deviation, based on the current measurements (Mean must be calculated first)"""
        sqrt_sum = 0
        for val in self.measures:
            sqrt_sum += (val - self.mean)**2
        
        subres = sqrt_sum
        if len(self.measures) > 1:
            subres = sqrt_sum / (len(self.measures) - 1)
        return math.sqrt(subres)

    def get_error_margin(self):
        """Will return the error margin, based on the current measurements (Standard deviation must be calculated first)"""
        return self.sd / math.sqrt(len(self.measures))

    def get_error_percent(self):
        """Will return the error margin in percent of the mean (Error margin must be calculated first)"""
        return (self.error_margin / self.mean)

    def save(self, benchmark_name):
        with open(self.file_name, "a+") as stats:
            string = "{0};{1:,.2f};{2:,.2f};{3:,.2f};{4:.2%};{5}\n".format(benchmark_name, self.mean, self.sd, self.error_margin, self.error_percent, len(self.measures))
            stats.write(string.replace(".", "*").replace(",", ".").replace("*", ","))


class Aggregator():
    def __init__(self, output_file):
        self.execution_time = Stats(output_file, "run_time", "ms")
        self.package = Stats(output_file, "pkg_power", "µj")
        self.ram = Stats(output_file, "ram_power", "µj")

    def clear(self):
        self.execution_time.Clear()
        self.package.Clear()
        self.ram.Clear()

    def add(self, result: Result):
        self.execution_time.add_measurement(result.duration)
        self.package.add_measurement(result.pkg)
        self.ram.add_measurement(result.dram)

    def compute(self):
        self.execution_time.compute_results()
        self.package.compute_results()
        self.ram.compute_results()

    def save(self, benchmark_name):
        self.execution_time.save(benchmark_name)
        self.package.save(benchmark_name)
        self.ram.save(benchmark_name)
