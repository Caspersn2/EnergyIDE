from bs4 import BeautifulSoup
import requests
import re

        
def save_links(url):
    base_url = 'http://www.rosettacode.org'
    html_page = requests.get(url).content
    soup = BeautifulSoup(html_page, 'html.parser')

    for link in soup.findAll('a', attrs={'href': re.compile("^/wiki")}):
        link = base_url + link.get('href')
        if is_benchmark_link(link):
            print(link)
            with open("benchmark_links.txt", "a") as f:
                f.write(link)
                f.write('\n')

def is_benchmark_link(url):
    html_page = requests.get(url).content
    soup = BeautifulSoup(html_page, 'html.parser')
    toc = soup.find(id='toc')

    if not toc:
        return False

    for tocelem in toc.find('ul').find_all(class_='toctext'):
        if tocelem.string and ('C#' in tocelem.string):
            return True
    return False

def get_benchmark_code(url):
    html_page = requests.get(url).content
    soup = BeautifulSoup(html_page, 'html.parser')
    code = soup.find(class_='csharp highlighted_source')


base_url_csharp = 'http://www.rosettacode.org/wiki/Category:C_sharp'

# save_links(base_url_csharp)

with open('test.txt') as f:
    benchmark_links = f.readlines()
for link in benchmark_links:
    get_benchmark_code(link)