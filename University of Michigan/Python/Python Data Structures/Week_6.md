# Tuples

Tuples and Assignment

```python
(x,y) = (4, 'Glen')
print(y)
(a,b) = (44,77)
print(a)
```

Taples and Dictionaries

```python
d = dict()
d['name1'] = 2
d['name2'] = 4

for k,v in d.items():
    print(k,v)
    
tups = d.items()
print(tups)
```

Sorting lists of Tuples

```python
d = {'a':10, 'b':1, 'c':22} 
d.items()
sorted(d.items())
```

Sort by Key

```python
d = {'a':10, 'b':1, 'c':22} 
t = sorted(d.items())

for k,v in sorted(d.items()):
    print(k,v)
```

Sort by Values

```python
c = {'a':10, 'b':1, 'c':22} 
tmp = list()

for k,v in c.items():
    tmp.append((v,k))
print(tmp)

tmp = sorted(tmp, reverse=False)
print(tmp)
```

10 most common words

```python
file = open('romeo.txt')

di = dict()

for line in file:
    line = line.rstrip()
    split_line = line.split()
    for w in split_line:

        di[w] = di.get(w,0) + 1
        
lst = list()
for k,v in di.items():
    newtup = (k,v)
    lst.append(newtup)
    
lst = sorted(lst,reverse=True)

for v,k in lst[:10]:
    print(k,v)
```

List comprehention

```python
c = {'a':10, 'b':1, 'c':22} 
print(sorted([(v,k) for k,v in c.items()]))
```

# Assignment 10.2

```python
name = input("Enter file:")
if len(name) < 1 : name = "mbox-short.txt"
handle = open(name)
d=dict()
count = 0
for line in handle:
    
    if not line.startswith('From'):continue
        
    line=line.split()
    
    if line[0]=='From':
        
        line =  line[5].split(':')
        
        for hrs in line[0].split():
            
            if hrs not in d:
                
                d[hrs]=1
            else:
                d[hrs]+=1
                
for key,value in sorted(d.items()):
    print (key,value)
```
