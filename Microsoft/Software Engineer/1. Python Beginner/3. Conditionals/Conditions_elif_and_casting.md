```python
weather = input("Enter weather (sunny, rainy, snowy): ") 

if weather.lower() == "sunny":
    print("Wear a t-shirt")
elif weather.lower() == "rainy":
    print("Bring an umbrella and boots")
elif weather.lower() == "snowy":
    print("Wear a warm coat and hat")
else:
    print("Sorry, not sure what to suggest for", weather)
```

```python
secret_num = "2"

guess = input("Enter a guess for the secret number (1-3): ")

if guess.isdigit() == False:
    print("Invalid: guess should only use digits")
elif guess == "1":
    print("Guess is too low")
elif guess == secret_num:
    print("Guess is right")
elif guess == "3":
    print("Guess is too high")
else:
    print(guess, "is not a valid guess (1-3)")
```

```python
size = input("Enter your size (S, M, L, XL) ")

if size.isdigit() == False:
    print("Invalid, number can't be a size")
elif size == "S":
    print("Small = $ 6")
elif size == "M":
    print("Medium = $ 7")
elif size == "L":
    print("Large = $ 8")
elif size == "XL":
    print("Extra Large = $ 10")
else:
    print("Sorry, this size is not avaliable")
```

Task

```python
size = input("Enter your size (S, M, L, XL) ")

if size == "S":
    print("Small = $ 6")
elif size == "M":
    print("Medium = $ 7")
elif size == "L":
    print("Large = $ 8")
elif size == "XL":
    print("Extra Large = $ 10")
else:
    print("Sorry, this size is not avaliable")
```

```python
# weight1 = '60' # a string
weight2 = 170 # an integer
# add 2 integers
total_weight = int(weight1) + weight2
print(total_weight)

age_new_student = input("Enter age: ")

grad_age = float(age_new_student) + 3.75

print ("age upon graduation will be", grad_age)
```

Task 2

```python
str_num_1 = "11"
str_num_2 = "15"
str_num_3 = "15"
str_num_4 = "15"
str_num_5 = "15"
int_num_1 = 10

print (float(str_num_1) + float(str_num_2) + float(str_num_3) + float(str_num_4) + float(str_num_5) + int_num_1)
```

```python
str_integer = "2"
str_integer1 = "2"
int_number = 10
number_total = int(str_integer) + int(str_integer1) + int_number
print(number_total)
```

```python
student_age = input('enter student age (integer): ')
age_next_year = int(student_age) + 1
print('Next year student will be',age_next_year)
```

```python
student_age = int(input('enter student age (integer): '))

age_in_decade = student_age + 10

print('In a decade the student will be', age_in_decade)
```

Task 3

```python
number1 = input("Enter first number ")
number2 = input("Enter second number ")

total = (int(number1) + int(number2))

print(number1, "+", number2, "=", total)
```

```python
x = 3
y = "3" 

# get_diff takes an int and a str
def get_diff(xint, ystr):   
if y.isdigit() == False:
   print('"y" is not an integer string')
elif get_diff(x,y) == 0:
    print('x equal to y')
else:
    print('x is NOT equal to y')
```
