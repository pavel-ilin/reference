import re
file_open = open('regex_sum_124478.txt')
file_read = file_open.read()
file_find = re.findall('[0-9]+',file_read)
file_find = [int(i) for i in file_find]
results = sum(file_find)
print(results)
