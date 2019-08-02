Arrays look like this: [1, 2, 3].

```JavaScript
var grilledCheeseIngredients = [
  'bread',
  'mild cheese',
  'sharp cheese',
  'butter',
  'tomato',
  'garlic'
]

var tomatoSauceIngredients = [
  'tomato',
  'garlic',
  'olive oil',
  'basil',
  'oregano'
]
```
### Creation

```javascript
var myArray = [element0, element1, ..., elementN];

var primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37];

var tvShows = ["game of thrones", "true detective", "the good wife", "empire"];

var weirdGreeting = [ "he", 110, "w", 0, "r", 1, "d" ];

var empty = [];
```

The Array constructor is another approach to making a new array.
```javascript
var evenNumbers = new Array();

```

### Adding an Element
JavaScript allows us to push elements onto the end of an array:
```javascript
var superheroines = ["catwoman", "she-hulk", "mystique"];

superheroines.push("wonder woman");
// superheroines is now ["catwoman", "she-hulk", "mystique", "wonder woman"]
```
We can also unshift elements onto the beginning of an array:
```javascript
var cities = ["New York", "San Francisco"]

cities.unshift("Philadelphia")

// cities is now ["Philadelphia", "New York", "San Francisco"]
```

```javascript
var cities = ["New York", "San Francisco"]

// we can assign it to the existing `cities` variable
cities = ["Philadelphia", ...cities]

// but if we have a const
const cats = ["Milo", "Garfield"]

// we need a new variable:
const moreCats = ["Felix", ...cats]
```

While we can add elements to an array directly at specific indexes

```javascript
var myArray = [1, 2, 3]

myArray[5] = 5

myArray // [1, 2, 3, undefined, undefined, 5]
```
it's best not to. We should treat arrays as ordered lists of information that can be any length, so updating a specific index should feel like a weird thing to do. Moreover, adding elements directly inserts undefined (as demonstrated above) if we also need to increase the array's length, which can lead to unexpected behavior.

### Removing an Element
To remove an element from the beginning of an array, we can use the shift method:
```javascript
const days = ["Monday", "Tuesday", "Wednesday"]

days.shift() // returns the removed element, in this case "Monday"

days // ["Tuesday", "Wednesday"]
```
slice does just what its name implies: it takes a slice from its array.
```javascript
var cats = ["Milo", "Garfield", "Otis"]

cats.slice(1) // ["Garfield", "Otis"]

cats // ["Milo", "Garfield", "Otis"]
```
As with other non-destructive methods, we need to assign the results to a new variable to save our changes:

```JavaScript
var cats = ["Milo", "Garfield", "Otis"]

cats = cats.slice(1) // ["Garfield", "Otis"]

cats // ["Garfield", "Otis"]
```
slice is also handy if we know we want the last n elements of an array: pass it a negative index.
```javascript
var cats = ["Milo", "Garfield", "Otis"]

// get the last 2 cats
cats.slice(-2) // ["Garfield", "Otis"]

// get the last 1 cat
cats.slice(-1) // ["Otis"]
```
To remove an element from the end of an array, we can use the pop method:
```javascript
var iceCreams = ["chocolate", "vanilla", "raspberry"]

iceCreams.pop() // returns the removed element, in this case "raspberry"

iceCreams // ["chocolate", "vanilla"]
```
### From the Middle of an Array
```javascript
let items = [1, 2, 3, 4]

// this will remove everything after index 1 (inclusive)
// it returns the removed items: [2, 3, 4]
items.splice(1)

items // [1]

items = [1, 2, 3, 4]

 // "at index 1, remove 1 item"
 // it returns the removed item(s): [2]
items.splice(1, 1)

items // [1, 3, 4]

items = [1, 2, 3, 4]

// "at index 1, remove 1 item and add 6 and add 7"
// it returns the removed items: [2]
// and adds the items to add starting at the removal index
items.splice(1, 1, 6, 7)

items // [1, 6, 7, 3, 4]
```
We can use slice, combined with the spread operator, to make removing from the middle of an array much easier.
```javascript
var items = [1, 2, 3, 4, 5]

// let's remove the third element

// a slice from the start up to but not including index 2 (the third element)
// and a slice from index 3 to the end
[...items.slice(0, 2), ...items.slice(3)] // [1, 2, 4, 5]'
```
### Array Wackiness

```javascript
var arr = ["under", "the", "hood"];

arr[0];  // "under"
arr['0']; // "under"
arr[02]; // 02 the number *is* 2, so you get "hood"
arr['02']: // '02' the string is *not* 2, so you get undefined
```

We can add properties to arrays

```javascript
var myArray = [1, 2, 3]

myArray.length // 3

myArray.length = 1

myArray // [1] (!!!)
```
It's important to remember that arrays in JavaScript are kind of wonky. You can assign properties to them:

```javascript
var array = [1, 2, 3];

array.myProperty = "I'm a property!";

array;
// [1, 2, 3];

// Where did our property go?
array.myProperty;
// "I'm a property!";

array.length;
// 3 - Would you have expected 3 or 4?

```
