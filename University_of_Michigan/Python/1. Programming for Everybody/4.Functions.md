Functions

```python
def thing():
     print("Hello")
     print("Fun")
thing()
```
Self build functions didn't run by it's own, we have to call it like this: thing()
```python
def greet(lang):
    if lang == "es":
        print ("Hola")
    elif lang == "fr":
        print("Bonjour")
    else:
        print("Hello")
greet("es")
```
```python
def greet(lang):
    if lang == "es":
        return "Hola"
    elif lang == "fr":
        return "Bonjour"
    else:
        return "Hello"
print(greet("es"))
```

Assignment 4.6

```python
def computepay():
    if h > 40:
        full_time = h*r
        over_time = (h-40) * (r*0.5)
        total = full_time + over_time
    else:
        total = h*r
    return total

h = int(input("Enter Hours:"))
r = float(input("Enter Rate:"))
p = computepay()

print(p)
```
