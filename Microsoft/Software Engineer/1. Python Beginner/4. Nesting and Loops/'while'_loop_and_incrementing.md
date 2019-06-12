```python
while True:
    print('write forever, unless there is a "break"')
    break
```

```python
secret_number = "5"

while True:
    number_guess = input("guess the number 1 to 5: ")
    if number_guess == secret_number:
        print("Yes", number_guess,"is correct!\n")
        break
    else:
        print(number_guess,"is incorrect\n")
```

```python
while True:
    weather = input("Enter weather (sunny, rainy, snowy, or quit): ") 
    print()

    if weather.lower() == "sunny":
        print("Wear a t-shirt and sunscreen")
        break
    elif weather.lower() == "rainy":
        print("Bring an umbrella and boots")
        break
    elif weather.lower() == "snowy":
        print("Wear a warm coat and hat")
        break
    elif weather.lower().startswith("q"):
        print('"quit" detected, exiting')
        break
    else:
        print("Sorry, not sure what to suggest for", weather +"\n")
```

```python
while True:
    name = input("Enter your first name: ")
    if name.isalpha():
        break
    else:
        print(name, "is not a word\n")
print("Welcome", name + "!")
```

```python
votes = 3
print(votes)

votes = votes + 1
print(votes)

votes += 2
print(votes)
print(votes)

votes -= 1
print(votes)

```

```python
seat_count = 0
while True:
    print("seat count:",seat_count)
    seat_count = seat_count + 1

    if seat_count > 4:
        break
```

```python
# initialize variables
seat_count = 0
soft_seats = 0
hard_seats = 0
num_seats = 4

# loops tallying seats using soft pads vs hard, until seats full or user "exits"
while True:
    seat_type = input('enter seat type of "hard","soft" or "exit" (to finish): ')
    
    if seat_type.lower().startswith("e"):
        print()
        break
    elif seat_type.lower() == "hard":
        hard_seats += 1
    elif seat_type.lower() == "soft":
        soft_seats += 1
    else:
        print("invalid entry: counted as hard")
        hard_seats += 1  
    seat_count += 1
    if seat_count >= num_seats:
        print("\nseats are full")
        break
        
print(seat_count,"Seats Total: ",hard_seats,"hard and",soft_seats,"soft" )
```

```python
size_num = 4
size_count = 0
s = 0
m = 0
l = 0

while True:
    size_type = input('enter size type of "small","medium" or "large" (to finish write "exit"): ')
    
    if size_type.lower().startswith("e"):
        print()
        break
    elif size_type.lower() == "small":
        s += 1
    elif size_type.lower() == "medium":
        m += 1
    elif size_type.lower() == "large":
        l += 1
    else:
        print("invalid entry")
        
    size_count += 1
    if size_count >= size_num:
        print("stock is empty")
        break
        
print(size_count,"Size Total: ",s,"small",m,"medium and", l, "large")
```

```python
size_num = 4
size_count = 0
s = 0
m = 0
l = 0


while True:
    size_type = input('enter size type of "small","medium" or "large" (to finish write "exit"): ')
    
    if size_type.lower().startswith("e"):
        print()
        break
    elif size_type.lower() == "small":
        s += 6
    elif size_type.lower() == "medium":
        m += 7
    elif size_type.lower() == "large":
        l += 8
    else:
        print("invalid entry")
        
    size_count += 1
    if size_count >= size_num:
        print("stock is empty")
        break

total_cost = s + m + l
    
print(size_count,"Size Total: ",s,"small",m,"medium and", l, "large")
print("Total cost is: $", total_cost)
```
