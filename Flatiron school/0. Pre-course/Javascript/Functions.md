```javascript
function sayHello() {
  console.log('Hello!')
}

sayHello()
```

Getting into an argument
```javascript
function doSomething(thing) {
  console.log(thing)
}

doSomething('anything')
```

```javascript
function sayHelloTo(firstName) {
  console.log(`Hello, ${firstName}!`)
}

sayHelloTo('Isabel') // "Hello, Isabel!"
sayHelloTo("Jane") // "Hello, Jane!"
sayHelloTo("R2-D2") // "Hello, R2-D2!"
sayHelloTo(1)
```

```javascript
function say(greeting, firstName) {
  console.log(`${greeting}, ${firstName}!`)
}

say("Julio", "hello")
```

Return value

```javascript
function add(x, y) {
  return x + y
}

add (1,2)
```

```javascript
function say(greeting, firstName) {
  return `${greeting}, ${firstName}!`
}

say("Hello", "Sofia")
```

```javascript
function say(greeting, firstName) {
  return `${greeting}, ${firstName}!`
  console.log('I was called!')
}

say("Howdy", "partner")
```
Then we can call it with say("Howdy", "partner") — but we only see "Howdy, partner!" in the browser console, meaning that we only return-ed the value — we never logged "I was called!".
This is because return ends the execution inside the function, meaning that if we return, nothing will happen after that. To both log and return like we want to, we can switch the order around:
```javascript
function say(greeting, firstName) {
  console.log('I was called!')
  return `${greeting}, ${firstName}!`
}

say("Howdy", "partner")
```

## Variables and functions
```javascript
function speaker() {
  var sentence = 'Bird is the word.';

  console.log(sentence);
}
```
If we call speaker() in console, we'll see 'Bird is the word.' logged out — all is well. But if we call console.log(sentence) outside of the speaker function, we'll get an error — the variable sentence is bound to the context of the function speaker.

If, however, we write:
```javascript
function speaker() {
  sentence = 'Bird is the word.';
}

speaker();
console.log(sentence);
```
and run speaker(), we can now call console.log(sentence) outside of the speaker function because we have declared the variable sentence without the var keyword — it's now a global variable.

### Changing Variable Values

```javascript
volume = 10; //declares a global variable called volume and sets it to 10

function returnEleven() {
  var volume = 11;  //declares a local variable called volume and sets it to 11
  return volume;
}

returnEleven(); // returns 11
volume; // the global variable is still 10

function goToEleven(){
  volume = 11;  //changes the global variable to 11
  return volume;
}

goToEleven(); // returns 11
volume;
```

However, global variable assignment can't overwrite local variable assignment, rather it simply reassigns the value of the local variable:
```javascript
function sayHello() {
  var greeting = "hola";
  greeting = "hello";
  return greeting;
}

sayHello()
// Returns "hello",
// This demonstrates that the variable greeting is now pointing to the string "hello" instead of "hola"

greeting
// ReferenceError: greeting is not defined
// This demonstrates that the variable greeting is still local instead of global
```
