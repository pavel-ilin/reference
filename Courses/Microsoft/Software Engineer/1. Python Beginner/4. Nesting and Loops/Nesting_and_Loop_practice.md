```python
print("Hello \nWorld")
```

```python
print("That\'s how we escape!")
```

```python
def quote_me(phrase):
    if phrase[0] == "\"":
        print('dq')
        print('\'', phrase[1:-1] ,'\'')
    elif phrase[0] == ('\''):
        print('sq')
        print("\"", phrase[1:-1], "\"")
    else:
        print("use quotations in your input for phrase")

quote_me("\'phrase\'")
```

```python
t_shirt = input("Choose color (Blue or White): ")

if t_shirt.lower() == "blue":
    print("You chose Blue color")
    bt_shirt = input("Chose size L or S ")
    if bt_shirt.lower() == "l":
        print("Here is your Blue t-shirt L size")
    elif bt_shirt.lower() == "s":
        print("Here is your Blue t-shirt S size")
    else:
        print("Sorry, we don't have", t_shirt, "t-shirt on stock")
elif t_shirt.lower() == "white":
    print("You chose White color")
    wt_shirt = input("Chose size L or M ")
    if wt_shirt.lower() == "l":
        print("Here is your White t-shirt L size")
    elif wt_shirt.lower() == "m":
        print("Here is your White t-shirt M size")
    else:
        print("Sorry, we don't have", t_shirt, "t-shirt on stock")
else:
    pass
```

```python
def str_analysis(string): 
  while string.lower() == "":
    string = input("Enter at least one character: ")
  else:
    if string.lower().isdigit():
      if int(string) > 99:
        print("This is a big number.")
      elif int(string) < 99:
        print("This is a small number.")
    elif string.lower().isalpha():
      print("This string is all alphabetic.")
    else:
      print("This string contains multiple character types.")

str_analysis(input("Enter at least one character: "))
```

```python
def ticket_check(section, seats):
  if section.lower().startswith("g"):
    if int(seats) > 0:
      if int(seats) < 11:
        return True
    else: 
      return False
  elif section.lower().startswith("f"):
    if int(seats) > 0:
      if int(seats) < 5:
        return True
  else: 
    return False

print(ticket_check(input("Enter your section. G for general, F for floor: "), input("Enter your seat number: ")))
```

```python
suma = 0
while True:
    sum1 = input("add number: ")
    if sum1.isalpha():
        print("You can't use letters, programm stop working!")
        break;
    if sum1.isdigit():
        suma = suma + int(sum1)
        print(suma)
          
    else:
        print('Please enter a digit!')
```

```python
# [ ] review the code, run, fix the error
tickets = int(input("enter tickets remaining (0 to quit): "))

while tickets > 0:
        # if tickets are multiple of 3 then "winner"
    if tickets/3 == tickets/3:
        print("you win!")
    else:
        print("sorry, not a winner.")
    tickets = int(input("enter tickets remaining (0 to quit): "))

print("Game ended")
```

```python
def quiz_item_a(a_question, a_solution):
  while True: 
    if a_question.lower() == a_solution: 
      return True
    else:
      print("Wrong.")
      ask_again = input("Try again: ")
      if ask_again.lower() == a_solution:
        return True

print(quiz_item_a(input("Is Kermit a frog? Y/N answer please: "), "y"))
print(quiz_item_a(input("Do cows drink milk? Y/N answer please: "), "n"))
print(quiz_item_a(input("Does the sun rise in the east? Y/N answer please: "), "y"))
```
