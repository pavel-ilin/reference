```python
"Hello" == "Hello"
```

```python
"Aardvark" > "Zebra"
```

```python
'student' > 'Student'
```

```python
print("'student' >= 'Student' is", 'student' >= 'Student')
print("'student' != 'Student' is", 'student' != 'Student')
```

```python
"Hello " + "World!" == "Hello World!"
```

```python
msg = "Hello"
print ("Hello equale Hello is", msg == "Hello")
```

```python
msg = input()
print (msg == "Hello")
```

```python
msg = "Save the notebook"

if msg.lower() == "save the notebook":
    print("message as expected")
else:
    print("message not as expected")
```

```python
msg = "Save the notebook"
prediction = "save the notebook"

if msg.lower() == prediction.lower():
    print("message as expected")
else:
    print("message not as expected")
```

```python
l_name = input("enter last name: ")

if l_name.lower() <= "c":
    print ("Welcome to the future")
else:
    print ("Sorry, this is only for the rich")
```

```python
user_input = input("What is 8 + 13? ")

if user_input == "21":
    print ("Correct")
else:
    print ("That's wrong, try again")
```

```python
user_input = input ("Should you kill yourself? (T/F): ")
question = "Should you kill yourself? (T/F)"
correct_ans = "T"


def tf_quiz(question, correct_ans):
    return(correct_ans == user_input)

quiz_eval = tf_quiz ("Should you kill yourself?" , "T")

print ("your answer is", quiz_eval)
```

```python
user_input = input ("Should you kill yourself? (T/F): ")
question = "Should you kill yourself? (T/F)"
correct_ans = "T"

def tf_quiz():
    if user_input.lower() == correct_ans.lower():
        print ("your answer is correct")
    else:
        print ("your answer is incorrect")

tf_quiz()
```
