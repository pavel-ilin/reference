# Iteration functions

Length of the string:

```python
fruit = "banana"
print(len(fruit))
```
Looping through string:

```python
fruit = "banana"
index = 0
while index < len(fruit):
    x = fruit[index]
    print(index, x)
    index = index +1


fruit = "banana"
for x in fruit:
    print (x)
```

String Slicing

```python
s = "Monty Python"
print(s[0:4])
```

Using in as a Logical Operator

```python
fruit = "banana"
if "n" in fruit:
    print("Found it")
```

#String Comparison

```python
word = "Pavel"
if word < "banana":
    print("Your word, " + word + ", comes before banana.")
elif word > "banana":
    print("Your word, " + word + ", comes after banana.")
else:
    print("All right, bananas.")
```

Method class str

```python
word = "Pavel"
print(dir(word))
```

Searching a String

```python
word = "Pavel"
pos = word.find("l")
print(pos)
```
Search and Replace

```python
word = "Hello Pavel"
nstr = word.replace("Pavel", "Gillian")
print(nstr)

word = "Hello Pavel"
nstr = word.replace("e", "X")
print(nstr)
```

Stripping Whitespace

```python
word = "      Hello Pavel"
print(word.lstrip())

word = "Hello Pavel         "
print(word.rstrip())

word = "           Hello Pavel         "
print(word.strip())
```

Prefixes

```python
word = "Hello Pavel" 
print(word.startswith("Hello"))
```

Parsing and Extracting

```python
data = "From 123@gmail.com Sat Jan 5 09:14:16 2018"
atpos = data.find("@")
print (atpos) 
sppos = data.find(" ", atpos)
print(sppos) 
host = data[atpos+1 : sppos]
print(host)
```
