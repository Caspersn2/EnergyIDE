import os
import fnmatch

class Program:
    def __init__(self, path, paradigm):
        self.path = path
        self.paradigm = paradigm

    def get_build_command(self):
        raise NotImplementedError("Please Implement this method")

    def get_run_command(self):
        raise NotImplementedError("Please Implement this method")


class Dotnet_Program(Program):
    def get_build_command(self):
        return "dotnet build --configuration Release --nologo --verbosity quiet " + self.path


class C_Sharp_Program(Dotnet_Program):
    def get_run_command(self):
        return self.path + '/bin/Release/net5.0/project'


class F_Sharp_Program(Dotnet_Program):
    def get_run_command(self):
        command = self.path + '/bin/Release/net5.0/'
        return command + self.paradigm + "_f#"


class Custom_Program(Program):
    def __init__(self, path, build_cmd, run_cmd):
        self.build_cmd = build_cmd
        self.run_cmd = run_cmd
        self.path = path

    def get_build_command(self):
        return self.build_cmd

    def get_run_command(self):
        return self.run_cmd


def all_benchmarks(path, lang):
    return C_Sharp_Program(path, path.split('/')[-1])
    