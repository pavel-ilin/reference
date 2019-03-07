Open and read files

```python
fhand = open ('test.txt')
for cheese in fhand:
    print(cheese)
```

Lines counting loop

```python
fhand = open ('test.txt')
count = 0
for line in fhand:
    count = count +1
    print(count)
```

Reading whole file

```python
fhand = open ('test.txt')
inp = fhand.read()
print(len(inp))
print(inp[:20])
```

Searching through a file

```python
fhand = open ('test.txt')
for line in fhand:
    line = line.rstrip() #eraise empty lines
    if line.startswith("t"):
        print(line)
```

Open file with input

```python
fname = input ()
fhand = open(fname)
for line in fhand:
    line = line.rstrip() #araise empty lines
    if line.startswith("t"):
        print(line)
```

Open file with input (bad input)

```python
fname = input ()
try:
    fhand = open(fname)
except:
    print("Wrong file name:", fname)
    quit()

for line in fhand:
    line = line.rstrip() #araise empty lines
    if line.startswith("t"):
        print(line)
```
