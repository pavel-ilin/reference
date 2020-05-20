```python
def short_rhyme(phrase):
    double = phrase + " " + phrase
    return double

print_twoline = short_rhyme ("rhyme")

print (print_twoline)
print (print_twoline)
```

```python
def title_it(msg):
    something = msg
    return something
another = title_it ("some message").title()
    
msg = input("what is the title? ")

print (msg)
```

```python
def bookstore(book, price):
    title_it = ("Title: " + book + ", " + price)
    return title_it
    
book_entry = input("The book ")
price_entry = input("Price ")

bookstore_output = bookstore (book_entry, price_entry)
print (bookstore_output)
```

```python
def make_greeting(greeting, name):
    real_greeting = (greeting + " " + name + "!")
    return real_greeting

name = input("enter a name: ")

name_printing = make_greeting ("Hello", name)

print (name_printing)
```
