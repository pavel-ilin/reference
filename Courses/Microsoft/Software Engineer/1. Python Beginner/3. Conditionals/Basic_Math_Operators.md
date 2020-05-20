```python
print("3 + 5 =",3 + 5)
print("3 + 5 - 9 =", 3 + 5 - 9)
print("48/9 =", 48/9)
print("5*5 =", 5*5)
print("(14 - 8)*(19/4) =", (14 - 8)*(19/4))
```

```python
def million_maker():
    make_big = input("enter a non-decimal number you wish were bigger: ")
    return int(make_big)*1000000

print("Now you have", million_maker())
```

```python
print ("15 - 43 =", 15-43)
print ("15 * 43 =", 15*43)
print ("156 / 22 =", 15/43)
print ("21 / 0.5 =", 21/0.5)
print ("(111 + 84) - 45 =", (111+84)-45)
print ("(21 + 4) * 4 =", (21+4)*4)
```

```python
user_input1 = input()
user_input2 = input()


def multiply():
    return int(user_input1)*int(user_input2)

print(user_input1, "*", user_input2, "=", multiply())
```

```python
user_input1 = int(input())
user_input2 = int(input())


def multiply(operator):
    if operator == "*":
        return user_input1 * user_input2
    elif operator == "/":
        return user_input1 / user_input2
    else:
        return "invalid operator"

print(multiply(input("Enter operator"))
```

```python
student_name = input("enter name: ").capitalize()
if student_name.startswith("F"):
    print(student_name,"Congratulations, names starting with 'F' get to go first today!")
elif student_name.startswith("G"):
    print(student_name,"Congratulations, names starting with 'G' get to go second today!")
else:
    print(student_name, "please wait for students with names staring with 'F' and 'G' to go first today.")
```
