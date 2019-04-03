In Python spaces matters.

```python
#Correct:

if x == 5:
     print(x)
else:
     pass

#Not correct: 

if x == 5:
print(x)
else:
pass
```

If we have trace back from python program stopped. In order to continue execution rest of the code we can use try and except functions.

```python
astr = "Hello Bob"
try:
          istr = int(astr)
except:
          istr = -1 
print("First", istr) 
```
```python
astr = "123"
try:
          istr = int(astr)
except:
          istr = -1
print("Second", istr) 

#Alike IF TRY and EXCEPT escape sequence.
```

Assignment: 

```python
score = input("Enter Score: ")
try:
    score_f = float(score)
except:
    print("Use digits only!")
    quit()
   
if score_f >= 0.9:
    print("A")
elif score_f >= 0.8:
    print("B")
elif score_f >= 0.7:
    print("C")
elif score_f >= 0.6:
    print("D")
elif score_f < 0.6:
    print("F")
else:
    print("Error! Out of range!")
```
