import re
x = 'From: using the : character'
y = re.findall('^F.+?:', x)
print(y)
