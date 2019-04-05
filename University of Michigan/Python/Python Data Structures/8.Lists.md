# Lists

```python
Lists =[1,2,3]

Sublists = [1,2,3,[1,2,3],4,5]
```

Modify lists:

```python
list_test = [1,2,3,4,5]
print(list_test)

list_test[3] = "Gillian"
print(list_test)
```

Ho many elements in the list?

```python
print(len(list_test))
```

Print range of list

```python
friends = ["Name1", "Name2", "Name3"]
print(len(friends))
print(range(len(friends)))


for i in range(len(friends)):
    friend = friends[i]
    print("Happy new year", friend)
```

Combine lists

```python
friends = ["Name1", "Name2", "Name3"]
friends1 = ["Name1", "Name2", "Name3"]
friends2 = friends + friends1
print (friends2)
```

Build a lists

```python
stuff = list()
stuff.append("book")
stuff.append(input())
print(stuff)
```

Is something on the list?

```python
some = [1,2,3,4,5,6]
print(9 in some)
print(1 in some)
print(20 not in some)
```

Organize List in order

```python
friends = ["Name1", "Aname2", "Name3"]
friends.sort()
print (friends)
print(friends[0])
```

Build-in functions and lists 

```python
some = [1,2,3,4,5,6]
print(max(some))
print(min(some))
print(sum(some))
print(sum(some)/len(some))
```

Example of using While loop NOT with lists

```python
total = 0
count = 0

while True:
    inp = input()
    if inp == "done" : break
    value = float(inp)
    total = total + value
    count = count + 1
average = total/count
print("Average is:", average)
```
Example of using While loop WITH lists

```python
numlist = list()
while True:
    inp = input("Enter a number: ")
    if inp == 'done' : break
    value = float(inp)
    numlist.append(value)

average = sum(numlist)/len(numlist)
print("Average:", average)
```

# Strings and lists

```python
abc = 'Here is some words'
stuff = abc.split()

print(stuff)
print(len(stuff))
print(stuff[1])
```

Loop through this list

```python
for w in stuff:
    print(w)
```

Not only spaces

```python
abc = 'Here:is:some:words'
stuff = abc.split(":")

print(stuff)
print(len(stuff))
print(stuff[1])

for w in stuff:
    print(w)
```

Example of splitting and searching specific things in file

```python
fhand = open ('mbox-short.txt')
for line in fhand:
    line = line.rstrip()
    if not line.startswith('From '): continue
    words = line.split()
    print(words[2])
```

Double splitting

```python
email = words[1]
pieces = email.split('@')
print(pieces[1]) 
```

# Assignment 8.4 romeo.txt

```python
fname= input('Enter a file name: ')
fh = open(fname)
lst = list()                      
for line in fh:                   
    word= line.split()    
    for element in word:          
        if element not in lst:         
            lst.append(element)  
print(sorted(lst))
```

# Assignment 8.5 mbox-short (1).txt

```python
fname = input("Enter file name: ")
if len(fname) < 1 : fname = "mbox-short (1).txt"

fh = open(fname)
count = 0

fhand = open ('mbox-short.txt')
for line in fhand:
    line = line.rstrip()
    if not line.startswith('From '): continue
    words = line.split()
    count = count + 1
    print(words[1])
    
print("There were", count, "lines in the file with From as the first word")
```
