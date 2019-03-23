import re
x = 'From ssrfgerghan.marquze@utc.awdff.ac.za Sat Jan 5 09:14:16 2008'
y = x.find('@')
print (y)

z = x.find(' ', y)
print(z)

host = x[y+1:z]
print(host)
