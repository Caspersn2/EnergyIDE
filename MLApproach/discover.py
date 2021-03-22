from bs4 import BeautifulSoup
import requests
import re


def get_soup(url):
    html_page = requests.get(url).content
    return BeautifulSoup(html_page, 'html.parser')

def save_links(links):
    with open("benchmark_links.txt", "a") as f:
        for link in links:
            f.write(link)
            f.write('\n')

def is_benchmark(url):
    soup = get_soup(url)
    edit_link = soup.find('a', {'title': 'Edit section: C#'})
    if edit_link:
        return True

def discover_rosetta(url):
    soup = get_soup(url)
    all_links = []
    base_url = 'http://www.rosettacode.org'

    links = [base_url + link.get('href') for link in soup.findAll('a', attrs={'href': re.compile("^/wiki")}) if is_benchmark(base_url + link.get('href'))]
    save_links(all_links)


def extract_sandfoundry_links(url):
    soup = get_soup(url)
    all_links = []
    tables = soup.findAll('table')
    for tab in tables:
        links = [child.get('href') for child in tab.findChildren('a')] 
        all_links.extend(links)
    return all_links

def discover_sanfoundry(url):
    soup = get_soup(url)

    for link in soup.findAll('a', attrs={'href': re.compile("csharp-programming-examples-on")}):
        link = link.get('href')
        all_links = extract_sandfoundry_links(link)
        save_links(all_links)
        
def discover_includehelp(url):
    soup = get_soup(url)
    base_url = 'https://www.includehelp.com/dot-net/'
    main_panel = soup.find('div', { "class" : "main-panel" })
    links = [base_url + li.find('a').get('href') for li in main_panel.findAll('li') if 'http' not in li.find('a').get('href')]
    save_links(links)


if __name__ == '__main__':
    discover_rosetta('http://www.rosettacode.org/wiki/Category:C_sharp')
    discover_sanfoundry('https://www.sanfoundry.com/csharp-programming-examples/')
    discover_includehelp('https://www.includehelp.com/dot-net/basic-programs-in-c-sharp.aspx')