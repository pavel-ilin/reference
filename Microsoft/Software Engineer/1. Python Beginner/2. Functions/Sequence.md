```python
def hat_available (color):
    hat_colors = 'black, red, blue, green, white, grey, brown, pink'
    return(color.lower() in hat_colors)

have_hat = hat_available('green')

print('Hat avaliable is', have_hat)
```

```python
user_request = input("Enter a type bird to search:")

birds = user_request

def bird_available(birds):
    bird_types = 'crow robin parrot eagle sandpiper hawk pigeon'
    return (birds.lower() in bird_types)

print (user_request.capitalize(), "available is", bird_available(birds))
```
