import xml.etree.ElementTree as ET

data = '''<person>
  <name>Pavel</name>
  <phone>123123</phone>
  <email hide='yes'/>
</person>'''

tree = ET.fromstring(data)

print('Phone:', tree.find('phone').text)
print('Attr:', tree.find('email').get('hide'))
