```python
greet_count = 5

# loop while count is greater than 0
while greet_count > 0:
    print(greet_count, "!")
    greet_count -= 1
print("\nIGNITION!")
```

```python
seat_count = 0

while seat_count <= 4:
    print("seat count:", seat_count)
    seat_count = seat_count + 1
```

```python
num_animals = 4
count_animals = 0
cat = 0
dog = 0
wolf = 0
bird = 0

while True:
    animal_type = input('enter type of animal "cat","dog", "wolf" or "bird" (to finish write "exit"): ')
    
    if animal_type.lower().startswith("e"):
        print()
        break
    elif animal_type.lower() == "cat":
        cat += 1
    elif animal_type.lower() == "dog":
        dog += 1
    elif animal_type.lower() == "wold":
        wolf += 1
    elif animal_type.lower() == "bird":
        bird += 1
    else:
        print("invalid entry")
        
    count_animals += 1
    if count_animals >= num_animals:
        print("Ok, we finish")
        break
    
if animal_type.lower() == "":
        print("no animals")
else:
    pass

print(count_animals,"Total number of animals: ",cat,"Cat",dog,"dog", wolf, "wolf and", bird, "bird")
```

```python
count = 1

# loop 5 times
while count <= 6:
    print(count, "x", count, "=", count*count)
    count = count + 1
```

```python
student_fname = ""
while student_fname.isalpha() == False:
    student_fname = input("enter student\'s first (Letters only, No spaces): ")
print("\n" + student_fname.title(),"has been entered as first name")
```

```python
long_num = "  "
int_num = ""

while int_num.isdigit() != True:
    int_num = input("enter digit only: ")
    
print(long_num + int_num.title())
```

```python
message = "hi"

while message.isupper() != True:
    message = input("Sorry, can\'t hear, pleas yell message: ")

print("message: " + message + " recieved")
```

```python
number = ""

while number.isdigit() != True:
    number = input("enter a positive integer: ")
print(number, "is an integer")

```

```python
count = 1

while count >= 1:
    print("loop")
    count +=1
```
