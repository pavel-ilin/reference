```python
user_input = input()

if user_input.isdigit() <= 12:
    print("On age in 10 years")
else:
    print("It is good to be ", user_input)
```

```python
try:
    x = int(input())
    if x > 100:
        print(x, "greater than 100 is True")
    elif x <= 100:
        print(x, "greater than 100 is False")

except ValueError:
    print('Only digits is accepted')
```

```python
letter = "J"
tries = 3

def check_guess (guess, letter):
    if not guess.isalpha():
        print("Invalid")
        return False
    if letter == guess.upper():
        return True
    elif letter < guess.upper():
        print ("Your guess is High")
        return False
    else:
        print ("Your guess is Low")
        return False

def letter_guess():
    for i in range(tries):
        guess = input ("Enter your guess ")
        res = check_guess (guess, letter)
        if res:
            print ("Correct!")
            return True
    return False

result = letter_guess()
if result:
    print ("Congratulations")
else:
    print ("The answer was ",letter)
print ("GAME OVER!")
```

```python
about_pet = input("Enter a sentence about a pet: ").lower()

if "dog" in about_pet:
    print("Ah, a dog")
elif "cat" in about_pet:
    print("Ah, a cat")
if 'dog' in about_pet and 'cat' in about_pet:
    print ("Ah, there is one or more pets")

print ("Thank you dor conversation")
```

```python
def rainbow():
    color = {
        "R": "Red",
        "O": "Orange",
        "Y": "Yellow",
        "G": "Green",
        "B": "Blue",
        "I": "Indigo",
        "V": "Violet"
        }

    user_input = input("Enter first letter of fav color: ").upper()

    if  user_input in color:
        print (color.get(user_input,"none"))

    else:
        print("no match")

rainbow()
```

```python
def age_20(age):
    user_age = input("How old are you? ")
    returne_age = (user_age + " years old, " + age + " years old from now")
    return returne_age


total_age = age_20("20")
print(total_age)
```

```python
number1 = int(input())
number2 = int(input())

print ((number1 + number2)/2)

if number1 > number2:
    print(numer1 - number2)
elif number2 > number1:
    print(number2 - number1)
```

```python
number1 = int(input())
number2 = int(input())

print ((number1 + number2)/2)

if float(number1) > float(number2):
    print(number1) / float(number2)
elif float(number2) > float(number1):
    print(number2 / number1)
elif float(number1 or number2) == 0:
    print(0)
```

```python
max_value = 100
min_value = 0.1
price_value = 5

order_ammount = float(input())

calculus = order_ammount * price_value



if order_ammount > max_value:
    print(order_ammount, "is more than currently available stock")
elif order_ammount < min_value:
    print (order_ammount, "is below minimum order amount")

elif order_ammount < max_value:
    print(order_ammount, "costs $", calculus)
    
elif order_ammount > min_value:
    print(order_ammount, "costs $", calculus)
```
