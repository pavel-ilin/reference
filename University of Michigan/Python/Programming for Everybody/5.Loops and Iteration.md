Loops and Iteration

```python
n = 5 
while n > 0:
    print (n)
    n = n -1 
print("Finish")
```

Breaking out of a loop

```python
while True:
    line = input(">")
    if line == "done":
        break
    print(line)
print("Done")
```
```python
while True:
    line = input(">")
    if line[0] == "#":
        continue
    if line == "done":
        break
    print(line)
print("Done")
```

Definite Loops

```python
for i in [5,4,3,2,1]:
    print(i)
print("бабах")

friends = ["Паша", "Миша", "Саша", "Глаша"]
for friend in friends:
    print("Happy New Year:", friend)
print("Done")
```

Finding the Largest Value

```python
largest_so_far = -1
print("Before", largest_so_far)
for the_num in [9,41,12,3,74,15]:
    if the_num > largest_so_far:
        largest_so_far = the_num
    print(largest_so_far, the_num)
print("After", largest_so_far)
```
# Loop Idioms

Counting

```python
zork = 0
print("Before", zork)
for thing in [9,41,12,3,74,15]:
    zork = zork +1
    print(zork, thing)
print("After", zork)
```

Summing

```python
zork = 0
print("Before", zork)
for thing in [9,41,12,3,74,15]:
    zork = zork + thing
    print(zork, thing)
print("After", zork)
```

Finding the Average

```python
count = 0
sum = 0
print("Before", count, sum)
for value in [9,41,12,3,74,15]:
    count = count +1
    sum = sum + value
    print(count, sum, value)
print("After", count, sum, sum/count)
```
Filtering

```python
print("Before")
for value in [9,41,12,3,74,15]:
    if value > 20:
        print ("larger number", value)
print("After")
```

Search Using a Boolean Variable 

```python
found = False
print("Before", found)
for value in [9,41,12,3,74,15]:
    if value == 3:
        found = True
    print(found, value)
print("After", found)
```

Finding the Smallest Value

```python
largest_so_far = None
print("Before", largest_so_far)
for the_num in [9,41,12,3,74,15]:
    if largest_so_far is None:
        largest_so_far = the_num
    elif the_num < largest_so_far:
        largest_so_far = the_num
    print(largest_so_far, the_num)
print("After", largest_so_far)
```
# Assignment 5.2

```python
largest = None
smallest = None

while True:
    num = input("Enter a number: ")
    if num == "done":
        break
    try:
        num = int(num)
    except:
        print("Invalid input")
        continue
        
    if largest is None:
        largest = num
    elif num > largest:
        largest = num
        
    if smallest is None:
        smallest = num
    elif num < smallest:
        smallest = num

print("Maximum is", largest)
print("Minimum is", smallest) 
```
