Variables declared with var are only available within that function's scope. Variables declared without var attach themselves to the global object.

```javascript
function myFunction() {
  var y = 2;
  console.log(y);
}
```

```javascript
var x = 1;

function myFunction(){
  y = 2;
  console.log(x);
}

console.log(y); // Error!

console.log(x); // 1
```
If you copy and paste this into the JS Console, you'll get an error with console.log(y); At this point in time, even though y is a global variable, the variable hasn't been defined. JavaScript has just stored a function called myFunction.

```javascript
var x = 1;

function myFunction(){
  y = 2;
  console.log(x);
}

myFunction(); // 1

console.log(y); // 2

console.log(x); // 1
```

### The Scope of Scope, or Getting Closure
One of the most powerful things about scope in JavaScript is how easily we can hide variables from the global scope but still make them available in inner scopes.
```javascript
function outerFunction() {
  var innerVariable = "I'm sort of a secret.";

  return function innerScope() {
    var inaccessible = "Nothing can touch me.";

    return innerVariable;
  }
}
```

JavaScript has first-class functions, meaning that we can pass them around with ease. When we call outerFunction(), the returned value is another function.
```javascript
var myScope = outerFunction();

// the stringified version of `innerScope()`
myScope;
```

### Shadowy Variables

```javascript
var animal = 'dog';

function makeZoo() {
  var animal = 'cat';

  console.log(`I think I'll put this ${animal} in the zoo.`);
}

makeZoo(); // "I think I'll put this cat in the zoo."

animal // "dog"
```
Notice how even though we have two variables called animal, only the one declared inside the makeZoo function is used within the function, and only the one declared outside of the function is available outside of it.
