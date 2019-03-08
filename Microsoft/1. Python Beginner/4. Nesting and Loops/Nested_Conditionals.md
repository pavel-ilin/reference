```python
number = 5

if number >= 2:
    if number > 2:
        print("Number is higher")
    else:
        print("Number is 2")
else:
    print("Number is lower")
```

```python
sandwich_type = input('"c" for Cheese or "v" for Veggie Special: ')

if sandwich_type.lower() == "c":
    
    cheese_type = input('"c" for Cheddar or "m" for Manchego: ')
    
    if cheese_type.lower() == "c":
        print("Here is your Cheddar Cheese sandwich")
    else:
        print("Here is your Manchego Cheese sandwich") 

else:
    print("Here is your Veggie Special")
```

```python
sandwich_type = input('"c" for Cheese or "v" for Veggie Special: ')

if sandwich_type.lower() == "c":
    # select cheese type
    print("Please select a cheese.")
    cheese_type = input('"c" for Cheddar or "m" for Manchego: ')
    print()
    
    if cheese_type.lower() == "c":
        print("Here is your Cheddar Cheese sandwich.  Thank you.")
    elif cheese_type.lower() == "m":
        print("Here is your Manchego Cheese sandwich.  Thank you.") 
    else:
        print("Sorry, we don't have", cheese_type, "choice today.")

elif sandwich_type.lower() == "v":
    print("Here is your Veggie Special. Thank you.")
        
else:
    print("Sorry, we don't have", sandwich_type, "choice today.")
print()
print("Goodbye!")
```

```python
hello = input("Say Hello ")

if hello == "Hello":
    print ("Hello to you too!")
    if hello != "Hello":
        print("hi")
    else:
        pass
else:
    print("Have a nice day")
```

```python
bird_names = "1,2,3"
bird_guess = input("What the name of the bird? ")

if bird_guess in bird_names:
    print ("Correct")
    if bird_guess in bird_names:
        print ("Correct")
        if bird_guess in bird_names:
            print ("Correct")
        else:
            print("False")
    else:
            print("False")
else:
            print("False")
```
