import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup
import ssl

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

#url - http://py4e-data.dr-chuck.net/comments_124480.html
url = input('Enter - ')
html = urllib.request.urlopen(url, context=ctx).read()
soup = BeautifulSoup(html, 'html.parser')

# Retrieve all of the anchor tags
tags = soup('span')

tag_digits = []

for tag in tags:
    for y in tag.contents:
        tag_digits.append(y)

tag_digits = [int(i) for i in tag_digits]
print(tag_digits)
print('Count: ', len(tag_digits))
print("Sum: ", sum(tag_digits))
