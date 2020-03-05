import json

data = '''
[{"id" : "001", "x" : "1", "name" : "Pavel" },
{"id" : "002", "x" : "2", "name" : "Alex" },
{"id" : "003", "x" : "3", "name" : "John" }]
'''

info = json.loads(data)

print('User count: ', len(info))

for item in info:
    print('Name: ', item['name'])
    print('ID: ', item['id'])
    print('Attribute: ', item['x'])
