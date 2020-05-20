```python
def bookstore(book, price):
    title_it = ("Fish Type: " + book + " costs $" + price)
    return title_it
    
book_entry = input("Fish Type: ")
price_entry = input("Price: ")

bookstore_output = bookstore (book_entry, price_entry)
print (bookstore_output)
```
