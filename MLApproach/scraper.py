from bs4 import BeautifulSoup
import requests
import re
import os
from tqdm import tqdm
import subprocess


def get_benchmark_code(url):
    html_page = requests.get(url).content
    soup = BeautifulSoup(html_page, 'html.parser')
    code = soup.find('textarea').string
    title = re.search(r'View source for (.*)', soup.find('h1').string).group(1)

    # Some benchmarks have several implementations. This catches all.
    all_programs = re.findall(r'<lang csharp>(.*?)</lang>', code, re.DOTALL)

    # Handle each benchmark
    # Do not consider programs that do not have a namespace,
    # Main function or take user input
    saved_paths = []
    for index, program in enumerate(all_programs):
        namespace = re.search(r'(?<=\bnamespace\s)(\w+)', program)
        if namespace is None or 'Console.ReadLine' in program or 'Main' not in program:
            continue
        saved_paths.append(save_benchmark(
            program, namespace.group(1), title, index))
    return saved_paths


def save_benchmark(program, namespace, title, index):
    title = title.replace(' ', '_').replace(
        '\'', '')  # Replace whitespace in title
    path = f'benchmarks/{title}_{index}'

    # Create directory for benchmark.
    if os.path.exists(path):
        print("Error")
    os.makedirs(path)

    # Add implementation
    with open(f'{path}/Program.cs', 'w+') as f:
        if 'Console.ReadKey' in program:
            program = program.replace('Console.ReadKey(true);', '')
            program = program.replace('Console.ReadKey();', '')
        f.write(program)
    # Add csproj
    with open(f'{path}/{namespace}.csproj', 'w+') as f:
        f.write(get_csproj_string(namespace))

    return path


def get_csproj_string(namespace):
    return f"""<Project Sdk="Microsoft.NET.Sdk">
  <ItemGroup>
    <ProjectReference Include="..\..\..\LibraryBenchmark\\benchmark.csproj" />
  </ItemGroup>
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net5.0</TargetFramework>
    <RootNamespace>{namespace}</RootNamespace>
  </PropertyGroup>
</Project>"""


def dissamble(path_to_benchmark):
    # Build benchmark. Supress output
    subprocess.call(f'dotnet build {path_to_benchmark}', shell=True,
                    stdout=subprocess.DEVNULL,
                    stderr=subprocess.DEVNULL)

    # Disassemble to CIL. Save as Prorgam.il
    path_to_assembly = f'{path_to_benchmark}/bin/Debug/net5.0'
    assembly = list(filter(lambda x: x not in ['benchmark.dll', 'CsharpRAPL.dll'], [
                    f for f in os.listdir(path_to_assembly) if '.dll' in f]))[0]
    subprocess.call(
        f'dotnet-ildasm {path_to_assembly}/{assembly} -o {path_to_benchmark}/Program.il', shell=True,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL)


if __name__ == '__main__':
    if len(os.listdir('benchmarks')) != 0:
        subprocess.call('rm -rf benchmarks/*', shell=True)

    with open('benchmark_links.txt') as f:
        benchmark_links = f.readlines()

    base_dir = 'benchmarks'
    could_not_build = []
    for benchmark in tqdm(benchmark_links):
        # Path_to_benchmark is benchmarks/name
        paths = get_benchmark_code(benchmark.strip())
        for path in paths:
            # Dissamble C# to CIL
            try:
                dissamble(path)
            except:
                # If the project cannot be build or dissambled,
                # delete it from the benchmarks folder
                subprocess.call(f'rm -rf {path}', shell=True)
                could_not_build.append(benchmark)
                continue
    print(could_not_build)
