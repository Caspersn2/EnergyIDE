from bs4 import BeautifulSoup
import requests
import re
import os
from tqdm import tqdm
import subprocess
from loguru import logger

# These statements requires the user to provide some input.
# We do not want to consider programs that require input.
blacklist = ['=Read', '=ReadLine', '=ReadKey', 
             '= Read', '= ReadLine', '= ReadKey',
             '=Console.Read', '=Console.ReadLine', '=Console.ReadKey', 
             '= Console.Read', '= Console.ReadLine', '= Console.ReadKey']


def get_benchmark_code_rosetta(url):
    html_page = requests.get(url).content
    soup = BeautifulSoup(html_page, 'html.parser')
    code = soup.find('textarea').string
    title = re.search(r'View source for (.*)', soup.find('h1').string).group(1)

    # Some benchmarks have several implementations. This catches all.
    all_programs = re.findall(r'<lang csharp>(.*?)</lang>', code, re.DOTALL)

    # Handle each benchmark
    # Do not consider programs that do not have a Main function 
    # or take user input
    saved_paths = []
    for index, program in enumerate(all_programs):
        if any(x in program for x in blacklist):
            logger.info(f"Benchmark contains something blacklisted: {title}_{index}")
            continue
        if 'Main' not in program:
            logger.info(f"Benchmark does not contain a Main function: {title}_{index}")
            continue
        saved_paths.append(save_benchmark(
            program, title, index))
    return saved_paths



def save_benchmark(program, title, index):
    # Replace whitespace in title
    title = title.replace(' ', '_').replace('\'', '')
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
    with open(f'{path}/project.csproj', 'w+') as f:
        f.write(get_csproj_string())

    return path


def get_csproj_string():
    return r"""<Project Sdk="Microsoft.NET.Sdk">
  <ItemGroup>
    <ProjectReference Include="..\..\..\LibraryBenchmark\benchmark.csproj" />
  </ItemGroup>
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net5.0</TargetFramework>
    <AllowUnsafeBlocks>true</AllowUnsafeBlocks>
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
    logger.add('scraper.log')
    if len(os.listdir('benchmarks')) != 0:
        subprocess.call('rm -rf benchmarks/*', shell=True)

    with open('benchmark_links.txt') as f:
        benchmark_links = f.readlines()

    base_dir = 'benchmarks'
    for benchmark in tqdm(benchmark_links):
        # Path_to_benchmark is benchmarks/name
        paths = get_benchmark_code_rosetta(benchmark.strip())
        for path in paths:
            # Dissamble C# to CIL
            try:
                dissamble(path)
            except:
                # If the project cannot be build or dissambled,
                # delete it from the benchmarks folder
                subprocess.call(f'rm -rf {path}', shell=True)
                logger.info(f'Could not build or dissamble: {path}')
                continue
