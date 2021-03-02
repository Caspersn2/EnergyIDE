from bs4 import BeautifulSoup
import requests
import re

base_url = 'http://www.rosettacode.org'


def get_edit_link(url):
    html_page = requests.get(url).content
    soup = BeautifulSoup(html_page, 'html.parser')
    edit_link = soup.find('a', {'title': 'Edit section: C#'})
    if edit_link:
        return edit_link['href']

if __name__ == '__main__':
    html_page = requests.get('http://www.rosettacode.org/wiki/Category:C_sharp').content
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