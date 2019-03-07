# Dictionary

```python
purse = dict()
purse['money'] = 12
purse['candy'] = 3
purse['test'] = 75
print(purse)
print(purse['candy'])

purse['test'] = purse['test'] + 2
print(purse)
```

Dictionary Literals (Constant)

```python
jjj = {'chuck': 1, 'fred': 42, 'jan': 100}
print(jjj)
```

Many Counters with a Dictionary

```python
ccc = dict()
ccc['csev'] = 1
ccc['cwen'] = 1
print(ccc)
ccc['cwen'] = ccc['cwen'] + 1
print(ccc)
```

It's an error to reference a key which is not in the dictionarry

```python
ccc = dict()
print(ccc['test'])
```

We can use the IN operator to see if a key is in the dictionarry

```python
'test' in ccc
```

When we see a New Name

```python
counts = dict()
names = ['csev', 'cwen', 'csev', 'zqian', 'cwen']
for name in names:
    if name not in counts:
        counts[name] = 1
    else:
        counts[name] = counts[name] +1
print(counts)
```

The GET method for dictionaries

```python
counts = dict()
names = ['csev', 'cwen', 'csev', 'zqian', 'cwen']

for name in names:
    counts[name] = counts.get(name,0) + 1
print(counts)
```

Counting pattern

```python
counts = dict()
print('Enter a line of text:')
line = input('')
words = line.split()

print('Words:', words)
print('Counting...')

for word in words:
    counts[word] = counts.get(word,0) + 1
    
print('Counts', counts)
```

Definite loops and dictionaries

```python
counts = {'chuck':1, 'fred':42, 'jan':100}
for key in counts:
    print(key,counts[key])
```

Retrieving lists of keys and values

```python
jjj = {'chuck':1, 'fred':42, 'jan':100}
print(list(jjj))
print(jjj.keys())
print(jjj.values())
print(jjj.items())
```

Two iterational variables

```python
jjj = {'chuck':1, 'fred':42, 'jan':100}
for bbb,aaa in jjj.items():
    print(aaa,bbb)
```

```python
if key in counts:
    counts[key] = counts[key] + 1
else:
    counts[key] = 1
```

Preparation for Assignment

```python
file = open('mbox-short.txt')

di = dict()

for line in file:
    line = line.rstrip()
    split_line = line.split()
    for w in split_line:

        di[w] = di.get(w,0) + 1

largest = -1
word = None
for k,v in di.items():
    if v > largest:
        largest = v
        word = k

print(largest, word)
```

# Assignment 9.4

```python

name = input("Enter file:")
if len(name) < 1 : name = "mbox-short.txt"
handle = open(name)
dict1 = dict()

for line in handle:
    words = line.split(' ')
    if words[0] == 'From':
        if words[1] in dict1:
            dict1[words[1]] = dict1[words[1]] + 1
        else:
            dict1[words[1]] = 1

mvalue  = 0
s = ('')

for email in dict1:
    if dict1[email] > mvalue:
        s = email
        mvalue = dict1[email]
    
print(s,mvalue)
```

How Assignment should looks lime

```python
name = input("Enter file:")
if len(name) < 1 : name = "mbox-short.txt"
file = open(name)

di = dict()

for line in file:
    w = line.split(' ')
    if w[0] == 'From':
        if w[1] in di:
            di[w[1]] = di[w[1]] + 1
        else:
            di[w[1]] = 1


largest = -1
word = None

for k,v in di.items():
    if v > largest:
        largest = v
        word = k

print(largest, word)
```
