## Selecting Single Elements

id
```JavaScript
document.querySelector('#content')

or

document.getElementById('content')
```

class
```JavaScript
document.querySelector('.content')

or

document.getElementsByClassName('content')
```

html tag
```JavaScript
document.querySelector('p')

or

document.getElementsByTagName('p')
```

## Strings and numbers

Declaring string variable:
```JavaScript
var nameVariable.innerHTML = 'Avi Flombaum';
```

Declaring integer variable:
```JavaScript
var nameVariable.innerHTML = 59;
```

Convert string into integer
```JavaScript
var heightSelector.innerHTML = '59';
heightSelector.innerHTML = parseInt(heightSelector.innerHTML);
```

Concentration
```JavaScript
var specialGuest = "Neil deGrasse Tyson";
"Hello, " + specialGuest + "!"
```

Interpolation - When we wrap strings in back ticks, we can use placeholders (${}) and insert variables or evaluated JavaScript directly within HTML
```JavaScript
var specialGuest = "Neil deGrasse Tyson";

`Hello, ${specialGuest}! High ${3 + 2}!`
```
