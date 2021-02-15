from bs4 import BeautifulSoup
import requests
import re
import os
from tqdm import tqdm

base_url = 'http://www.rosettacode.org'
base_url_csharp = 'http://www.rosettacode.org/wiki/Category:C_sharp'


def save_links(url):
    html_page = requests.get(url).content
    soup = BeautifulSoup(html_page, 'html.parser')

    for link in soup.findAll('a', attrs={'href': re.compile("^/wiki")}):
        link = base_url + link.get('href')
        benchmark_link = get_edit_link(link)
        if benchmark_link:
            print(link)
            benchmark_link = base_url + benchmark_link
            with open("benchmark_links.txt", "a") as f:
                f.write(benchmark_link)
                f.write('\n')

def get_edit_link(url):
    html_page = requests.get(url).content
    soup = BeautifulSoup(html_page, 'html.parser')
    edit_link = soup.find('a', {'title': 'Edit section: C#'})
    if edit_link:
        return edit_link['href']


def get_benchmark_code(url):
    html_page = requests.get(url).content
    soup = BeautifulSoup(html_page, 'html.parser')
    code = soup.find('textarea').string
    title = re.search(r'View source for (.*)', soup.find('h1').string).group(1)

    # Some benchmarks have several implementations. This catches all.
    all_programs = re.findall(r'<lang csharp>(.*?)</lang>', code, re.DOTALL)
    
    # Handle each benchmark
    for index, program in enumerate(all_programs):
        namespace = re.search(r'(?<=\bnamespace\s)(\w+)', program)
        if(namespace is not None):
            add_benchmark_with_namespace(program, namespace.group(1), title, index)


def add_benchmark_with_namespace(program, namespace, title, index):
    title = title.replace(' ','_') # Replace whitespace in title
    path = f'benchmarks/{title}_{index}'

    # Create directory for benchmark.
    if os.path.exists(path):
        print("Error")
    os.makedirs(path)

    # Add implementation
    with open(f'{path}/Program.cs', 'w+') as f:
        if 'Console.ReadKey(true);' in program:
            program = program.replace('Console.ReadKey(true);', '')
        f.write(program)
    # Add csproj
    with open(f'{path}/{namespace}.csproj', 'w+') as f:
        f.write(get_csproj_string(namespace))

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


# save_links(base_url_csharp)

with open('benchmark_links.txt') as f:
    benchmark_links = f.readlines()
for link in tqdm(benchmark_links):
    get_benchmark_code(link.strip())
    break
