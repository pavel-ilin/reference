```python
def msg_double(phrase):
    double = phrase + " " + phrase
    return double

msg_2x = msg_double("Let's go")

print(msg_2x)
```

```python
def half_value(value):
    return value/4
print (half_value(42))
```

```python
def msg_double(phrase):
      double = phrase + " " + phrase
      return double

print(msg_double("Save Now!"))
```

```python
def make_doctor(full_name):
    return full_name
full_name = input("Enter new's doctor full name ")

print (full_name)
```

```python
def bitcoin_to_usd(btc):
    amount = btc * 527
    print(amount)

btc = input("Input your Bitcoins amount: ")

bitcoin_to_usd(btc)
```

```python
def make_schedule(period1, period2):
    schedule = ("[1st] " + period1.title() + ", [2nd] " + period2.title())
    return schedule

student_schedule = make_schedule("mathematics", "history")
print("SCHEDULE:", student_schedule)
```

```python
def make_schedule(period1, period2, period3, period4, period5, period6):
    schedule = ("[1st] " + period1.title() + ", [2nd] " + period2.title() + ", [3rd] " + period3.title() + ", [4th] " + period4.title() + ", [5th] " + period5.title() + ", [6th] " + period6.title())
    return schedule

student_schedule = make_schedule("mathematics", "history", "music", "phisics", "philosophy", "english language")
print("SCHEDULE:", student_schedule)
```
