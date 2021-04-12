from bs4 import BeautifulSoup
import requests
import re
import os
from tqdm import tqdm
import subprocess
from loguru import logger
from multiprocessing import Pool

# These statements requires the user to provide some input.
# We do not want to consider programs that require input.
blacklist = ['Read', 'ReadLine', 'ReadKey', 'args[']


def get_benchmark_code(url, type='rosetta'):
    html_page = requests.get(url).text
    new_html = re.sub(r'<br\s*/>', '\n', html_page)
    soup = BeautifulSoup(new_html, 'html.parser')
    if url.endswith('/'):
        url = url[:-1]

    if type == 'rosetta':
        # Some benchmarks have several implementations. This catches all.
        all_pre = soup.find_all("pre", {"class": "csharp highlighted_source"})
        all_programs = [pre.text for pre in all_pre]
    elif type == 'sanfoundry':
        all_programs = [soup.find('pre').text]
    elif type == 'includehelp':
        all_programs = [soup.find('pre', {"class": "i3-code"}).text]
        url = url.replace('.aspx', '')
    title = url.split('/')[-1]

    # Handle each benchmark
    # Do not consider programs that do not have a Main function
    # or take user input
    saved_paths = []
    for index, program in enumerate(all_programs):
        if any(x in program for x in blacklist):
            logger.info(
                f"Benchmark contains something blacklisted: {title}_{index}")
            continue
        if 'Main' not in program:
            logger.info(
                f"Benchmark does not contain a Main function: {title}_{index}")
            continue
        saved_paths.append(save_benchmark(
            program, title, index))
    return saved_paths


def save_benchmark(program, title, index):
    # Replace whitespace in title
    title = title.replace(' ', '_')
    title = re.sub(r'[^0-9a-zA-Z_\-]', '', title)
    path = f'benchmarks/{title}_{index}'

    # Create directory for benchmark.
    if os.path.exists(path):
        return
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

def scrape_benchmark(benchmark):
    if 'rosetta' in benchmark:
        paths = get_benchmark_code(benchmark.strip(), type='rosetta')
    elif 'sanfoundry' in benchmark:
        paths = get_benchmark_code(benchmark.strip(), type='sanfoundry')
    elif 'includehelp' in benchmark:
        paths = get_benchmark_code(benchmark.strip(), type='includehelp')

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

if __name__ == '__main__':
    logger.add('scraper.log')
    if len(os.listdir('benchmarks')) != 0:
        subprocess.call('rm -rf benchmarks/*', shell=True)
#
    with open('benchmark_links.txt') as f:
        benchmark_links = f.readlines()
    
    pool = Pool(processes=4)
    pool.map(scrape_benchmark, benchmark_links)
