# JavaScript Functions as First Class Data: Array of Functions

## Learning Goals

- Create a JavaScript function that loops through a function `Array`

## Introduction

Since functions in JavaScript are "first-class" objects, it means they can be
treated like any other data type in JavaScript (`Number`, `String`, et al.).  A
fun way to experience this truth is to load up an `Array` of `Functions` and
then call each `Function`.

### Create a JavaScript Function That Loops Through a Function `Array`

Let's create an `Array` of dog-care functions so that we can report on the
activities we take in caring for Byron the Poodle.

When this program runs, it should print out:

```
console.log("Wake Byron the poodle");
console.log("Leash Byron the poodle");
console.log("Walk to the park with Byron the poodle");
console.log("Throw the frisbee for Byron the poodle");
console.log("Walk home with Byron the poodle");
console.log("Unleash Byron the poodle");
```

Start by creating a function for every activity that you see listed above:

For example:

```js
function wakeDog() {
  console.log("Wake Byron the poodle");
}
...
```

But wait, if we write it in this way, all of our uses of this function will be
for `Byron the poodle`. Let's _generalize_ now and make each function take a
`dogName` and `dogBreed` parameter. Thus:

```js
function wakeDog(dogName, dogBreed) {
  console.log(`Wake ${dogName} the ${dogBreed}`);
}
...
```

**Additionally**: Each function should return the string that it creates. That
is, we should create a `String`, `console.log()` it, and return that `String`.

## Create the Array o' Functions

Continue writing "generalized" functions for

* `wakeDog`
* `leashDog`
* `walkToPark`
* `throwFrisbee`
* `walkHome`
* `unleashDog`

Each function's implementation will be a generalized invocation of
`console.log()`.

## Create the Array o' Functions

Next, create our "Array o' Functions!" Create a variable called `routine`. This
variable will be an `Array` all of the functions we've just defined.

## Create a Function to Process the Array o' Functions

Lastly, create the function called `exerciseDog` that will take in two
arguments:

* `dogName`
* `dogBreed`

The function's implementation should

* Iterate over the `routine` `Array`
* Call each function in the array and
* pass the `dogName` and `dogBreed` received by `exerciseDog()` to the function as they are _called_
* capture the result of each function's call
* return an `Array` of all those functions' return values

## Conclusion

This lab demonstrates the power of `Function`s as first-class data. We can
stack them up in `Arrays` or assign them inside of `Objects` or save them to
variables, or iterate over them. Instead of _merely_ having `Array`s of
`String`s and other familiar items, we can stuff them with _work_. And that's
nothing short of amazing!

[First Class Functions MDN](https://developer.mozilla.org/en-US/docs/Glossary/First-class_Function)

[First Class Functions Hackernoon](https://hackernoon.com/javascript-and-functional-programming-pt-2-first-class-functions-4437a1aec217)
