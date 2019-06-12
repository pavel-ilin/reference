```python
if True:
    print ("Работает")
else:
    print ("Not true")
```

```python
if False:
    print ("Работает")
else:
    print ("Not true")
```

```python
someone = True

if someone:
    print ("How have you been?")
else:
    print ("nice to meet you")
```

```python
someone = False

if someone:
    print ("How have you been?")
else:
    pass
```

Task

```python
sunny_today = False

if sunny_today:
    print ("It is sunny today")
else:
    print("It is not sunny today")
```

```python
favorite_book = input("Enter the title of your favorite book: ")

if favorite_book.istitle():
    print(favorite_book, "- nice capitalization in that title!")
else:
    print(favorite_book, "- Tip: capitalize each word fo book titles.")
```

```python
a_number = input("enter a positive enteger number: ")

if a_number.isdigit():
    print(a_number, "is a positive integer")
else:
    print(a_number, "is not a positive integer")
    
if a_number.isalpha():
    print(a_number, "is more like a word")
else:
    pass
```

Task

```python
testing_string_1 = "welcome"
testing_string_2 = "I have $3"

if testing_string_1.islower():
    print("First string is lower")
else:
    print("First string is not lower")
if testing_string_2.islower():
    print("Second string is lower")
else:
    print("Second string is not lower")
```

```python
test_string_1 = "welcome"
test_string_2 = "I have $3"
test_string_3 = "with a function it's efficient to repeat code"

def w_start_test():
    
    if test_string_1.startswith('w'):
        print("True")
    else:
        print ("False")

    if test_string_2.startswith('w'):
        print ("True")
    else:
        print ("False")

    if test_string_3.startswith('w'):
        print ("True")
    else:
        print ("False")

w_start_test ()
```
