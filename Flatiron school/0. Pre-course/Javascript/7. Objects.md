## Creating Objects

```javascript
var meals = {};

// The curly braces ({}) are an object! You just created your first one!

var meals = new Object();

var meals = { breakfast: "oatmeal" };

// or, equivalently

var meals = new Object({ breakfast: 'oatmeal' })

```
Note that all keys in JavaScript objects are strings. This means that even though you can create an object {1: 'is the loneliest number'}, the key here, 1 gets turned into the string '1'. Values can be of any type.

Note also that keys must be unique. If you were to initialize the following object
```javascript
var meals = {
  breakfast: 'eggs',
  breakfast: 'bacon'
}

// { breakfast: 'bacon' }
```
Only the last key-value pair to use breakfast as the key gets saved! Values don't have to be unique, though:

```javascript
var meals = {
  breakfast: 'avocado',
  lunch: 'avocado',
  dinner: 'avocado'
}
```

We can access the values in an object using dot notation
```javascript
meals.breakfast // 'oatmeal'
```
or square-bracket notation
```javascript
meals['breakfast'] // 'oatmeal'
```

## Adding to an Object
It's great that we can initialize an object with some key-value pairs
```javascript
var meals = {
  breakfast: 'oatmeal',
  lunch: 'burrito',
  dinner: 'steak'
}

meals.snack = 'yogurt';

meals.snack // 'yogurt'
meals['snack'] // 'yogurt'
meals.lunch // 'burrito'
```
We can also add key-value pairs using bracket notation:
```javascript
meals['second breakfast'] = 'bagel'

var sweetMeal = 'dessert'

meals[sweetMeal] = 'cake';

meals.dessert // 'cake'
meals[sweetMeal] // 'cake'
```
Lest it seem like we can only add new things, we can update existing key-value pairs by using the key:
```javascript
meals.breakfast = 'cereal'
```
Note that all of the changes highlighted above are destructive. This means that if we apply these changes to an object by passing the object to a function, the original object will change. Let's try it out:
```javascript
function destructivelyUpdateObjectWithKeyAndValue(obj, key, value) {
  obj[key] = value

  return obj
}

const recipe = { eggs: 3 }

destructivelyUpdateObjectWithKeyAndValue(recipe, 'flour', '3 cups')
// returns { eggs: 3, flour: '3 cups' }

// but also:

recipe // { eggs: 3, flour: '3 cups' }
```

### Object.assign()
```javascript
Object.assign({}, { foo: 'bar' })
// { foo: 'bar' }

Object.assign({ eggs: 3 }, { flour: '1 cup' })
// { eggs: 3, flour: '1 cup' }

Object.assign({ eggs: 3 }, { chocolate: '1 cup', flour: '2 cups' }, { flour: '1/2 cup' })
// { eggs: 3, chocolate: '1 cup', flour: '1/2 cup' }
```

The power of Object.assign allows us to rewrite the above update function in a non-destructive way:

```javascript
function updateObjectWithKeyAndValue(obj, key, value) {

  return Object.assign({}, obj, { [key]: value })
}
  // it's important that we merge everything into
  // a new object such as the empty {}.
    // Otherwise, the object obj will be modified.
    // Test what happens if this line was written as:
    // return Object.assign(obj, { [key]: value })

const recipe = { eggs: 3 }

updateObjectWithKeyAndValue(recipe, 'chocolate', '1 cup')
// returns `{ eggs: 3, chocolate: '1 cup' }`

recipe // { eggs: 3 }
```
Sweet (and not just because of the chocolate)! We can make our update function even terser:

```javascript
function updateObjectWithObject(targetObject, updatesObject) {
  return Object.assign({}, targetObject, updatesObject)
}
```

### Deleting a Key-Value Pair
```javascript
var meals = { breakfast: "oatmeal", lunch: "turkey sandwich", dinner: "steak and potatoes" };

// the `delete` operator returns `true` if it has successfully
// deleted, `false` otherwise
delete meals.dinner; // true

meals;
// returns { breakfast: "oatmeal", lunch: "turkey sandwich" }
```
### Changing a Value

```javascript
var meals = {
  breakfast: "oatmeal",
  lunch: "turkey sandwich",
  dinner: "steak and potatoes"
};
meals.breakfast = ["oatmeal", "banana"];

meals;
// {
//   breakfast: ["oatmeal", "banana"],
//   lunch: "turkey sandwich",
//   dinner: "steak and potatoes"
//  }
````
