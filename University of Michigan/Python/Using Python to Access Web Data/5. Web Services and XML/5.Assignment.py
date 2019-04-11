import urllib.request, urllib.parse, urllib.error
import xml.etree.ElementTree as ET
import ssl

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

xml_file = urllib.request.urlopen('http://py4e-data.dr-chuck.net/comments_124482.xml', context=ctx).read()
stuff = ET.fromstring(xml_file)
lst = stuff.findall('comments/comment')
count_list = []

for item in lst:
    count_list.append (item.find('count').text)
    count_list = [int(i) for i in count_list]

print('Counts: ', len(lst))
print(sum(count_list))
