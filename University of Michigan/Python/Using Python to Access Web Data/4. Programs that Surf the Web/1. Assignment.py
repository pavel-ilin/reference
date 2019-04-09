import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup
import ssl

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

url = input('Enter - ')
html = urllib.request.urlopen(url, context=ctx).read()
soup = BeautifulSoup(html, 'html.parser')

# Retrieve all of the anchor tags
tags = soup('span')

tag_digits = []

for tag in tags:
    tag_digits.append(tag.contents)

#print(tag_digits) #just check how list looks like
    
list_1 = []
for x in tag_digits:
    for y in x:
        list_1.append(y)
        
#print(list_1) #just check how list looks like

list_1 = [int(i) for i in list_1]
print(list_1)
print('Count: ', len(list_1))
print("Sum: ", sum(list_1))
