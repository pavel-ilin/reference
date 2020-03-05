import urllib.request, urllib.parse, urllib.error
import json

serviceurl = 'http://py4e-data.dr-chuck.net/comments_124483.json'

uh = urllib.request.urlopen(serviceurl)
data = uh.read().decode()
info = json.loads(data)

#print(info['comments'])

list_items = []

for item in info['comments']:
    list_items.append(item['count'])

print(len(list_items))
print(sum(list_items))
