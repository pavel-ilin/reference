```python
student_name = ("Hiroto Yamaguchi")
student_age = ("17")
drummer = ("Pavel Ilin")
time = (20)
place = ("Carnegie hall")
streamer = ("Baker Gamer")
game = ("Age of Empires,")
print (student_name, "will be in the class for", student_age, "year old student.")
print ()
print (drummer, "will play tonight at", time, "p.m. eastern time at", place)
print ()
print ("Only today", streamer, "will play our favorite game", game,"you can't miss it!")
```

```python
def say_hi():
    print ("Hello world")
    print ("goodbye")
    
say_hi ()
```

```python
def three_3_function():
    print(33)
three_3_function()    
```

```python
def yell_it():
    fools = ("Death to the fools")
    print (fools.upper() + "!")
    
yell_it()
```

```python
def say_this(phrase):
    print (phrase.upper() + "*")
    
say_this ("good night")
```

```python
def say_this(phrase = "good morning"):
    print (phrase.upper() + "*")
    
say_this ("good night")

say_this ()
```

```python
words_to_yell = input ()

def yell_this ():
    print (words_to_yell.upper() + 12 + "musicians")
    
yell_this ()
```
