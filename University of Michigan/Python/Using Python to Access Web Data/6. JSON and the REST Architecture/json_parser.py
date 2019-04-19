import json

data = '''{
"name" : "Pavel",
"phone": {"type" : "intl", "number" : "123123"},
"email": {"hide" : "yes"}
}'''

info = json.loads(data)
print('Phone: ', info['phone']['number'])
print('Hide: ', info['email']['hide'])
