Escape Sequences escape sequences all start with a backslash (\) escape sequences can be used to display characters in python reserved for formatting \\ Backslash (\) \' Single quote (') \" Double quote (") escape sequences are part of special formatting characters \t Tab \n return or newline We use escape sequences in strings - usually with print() statements


```python
print('Hello World!\nI am formatting print ')
```

```python
student_age = 17
student_name = "Hiroto Yamaguchi"
print("STUDENT NAME\t\tAGE")
print(student_name,'\t' + str(student_age))
```

```python
print("\"quotes in quotes\"")
print("I\'ve said \"save your notebook,\" so let\'s do it!")

# using  \\ (escaped backslash)
print("for a newline use \\n")
```

```python
print ("\\\\\\WARNING!///")
```

```python
print("\"What\'s that?\" isn\'t a specific question?")
```

```python
print("One \tTwo \tThree \nFour \tFive \tSix")
```

```python
print("Hello \nWorld!")
```

```python
def pre_word():
    word = input("Start with pre ")
    if word == False:
        print("Wrong input")
    else:
        return word.startswith("pre")
        print("Correct")
        

print(pre_word())
```
