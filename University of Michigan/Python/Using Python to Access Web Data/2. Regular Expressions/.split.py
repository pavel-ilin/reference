# Double split pattern
#x = 'From stephan.marquze@utc.ac.za Sat Jan 5 09:14:16 2008'
#words = x.split()
#email = words[1]
#pieces = email.split('@')
#print(pieces[1])

import re
x = 'From stephan.marquze@utc.ac.za Sat Jan 5 09:14:16 2008'
y = re.findall('@([^ ]*)', x)
print(y)

y = re.findall('^From .*@([^ ]*)', x)
print(y)
