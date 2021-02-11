from bs4 import BeautifulSoup
import requests
import re

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
    edit_link = soup.find('a', {'title' : 'Edit section: C#'})
    if edit_link:
        return edit_link['href']


save_links(base_url_csharp)

#with open('benchmark_links.txt') as f:
#    benchmark_links = f.readlines()
#for link in benchmark_links:
#    get_benchmark_code(link.strip())
#    break