import xml.etree.ElementTree as ET

input = '''<stuff>
<users>
<user x='2'>
<id>001</id>
<name>Pavel</name>
</user>
<user x='7'>
<id>009</id>
<name>John</name>
</user>
</users>
</stuff>
'''
stuff = ET.fromstring(input)
lst = stuff.findall('users/user')
print('Users count: ', len(lst))

for item in lst:
    print('Name: ', item.find('name').text)
    print('ID: ', item.find('id').text)
    print('Attribute: ', item.get('x'))
