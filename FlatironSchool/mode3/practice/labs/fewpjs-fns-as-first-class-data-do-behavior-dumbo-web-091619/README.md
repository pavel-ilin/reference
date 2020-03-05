# JavaScript Functions as First Class Data: Do behavior

## Learning Goals

- Create a JavaScript function triggered by an event

## Introduction

In review, functions in JavaScript are first-class data. They are treated
like any other variable and we can pass them as values to other functions.
In this lab, we're going to have an event handler send some information
gathered by an `<input>` field to a helper function.

## Create a "First-Class" Function

We're going to create a web greeting! You're provided text input field in which
you should enter a time in [24 hour time][24]. When you click the `Submit`
button, some provided code will run which will make calls to **two** functions.

## The `greet()` function

The `greet` function should take one argument, a `String` which specifies the
24-hour time in the format `HH:MM`.

- If the time is earlier than 12pm, return "Good Morning".
- If the time is between 12pm and 5pm, return "Good Afternoon".
- If the time is later than 5pm, return "Good Evening".

**NOTE:** The value returned from the `<input>` will be of type `String`.
You’ll need to take the `String` of the 24 hour time and covert it to a number.
The `split()` [function](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/split)
and the `parseInt()` [functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseInt) should help.

##  The `displayMessage()` function

The `displayMessage` function should take one argument, a `String`.

When the function runs it should update the text inside the `#greeting` node
with the content of the first argument.

It does not return anything.

## Conclusion

This lab demonstrates just the tip of the iceberg when it comes to leveraging
the power of JavaScript functions. There are heaps features that JavaScript has
— some are even comparable to Ruby and other programming languages. We'll be
exploring more on JavaScript events in the next lesson.

[24]: https://en.wikipedia.org/wiki/24-hour_clock
