Course project:[Lapis, Papyrus, Scalpellus](https://codepen.io/refugee-studio/pen/NZJEEB)
---
# Introduction to Javascript

## JavaScript Syntax
- Capitalization - myname and myName are read differently by JavaScript. All JavaScript variables in camel case, with every word after the first word capitalized
- Punctuation - Punctuation counts in JavaScript. We end most lines of JavaScript with a semicolon, like this:
```JavaScript
const myName = "Lisa Simpson";
console.log("Hello", myName);
```
### The Nouns of JavaScript
- We use variables in JavaScript like we use nouns in English. Variables hold values. For example, myName and myAge are variables, and they hold the values “Lisa Simpson” and 8, respectively.
```JavaScript
const myName = "Lisa Simpson";
let myAge = 8;
```
- Start with the introductory keyword, which can be const or let. This lets JavaScript know that a variable comes after the keyword.
- The variable’s name is written in camel case.
- The value, which comes after =, determines what the variable represents. Think of it as the definition of a noun.

- When we use const (short for “constant”), we’re specifying that the data the variable contains is not going to change.
```JavaScript
const myHometown = "Dakar, Senegal";
```
- When you define a variable with let, you can change the value of that variable throughout the course of the program.
```JavaScript
let myAge = 30;
```
- The oldest way of declaring a variable in JavaScript is to use var, which simply stands for “variable.” A variable defined with var can be changed. It’s written like this:
```JavaScript
var myJob = "fortune cookie writer";
```
### The Verbs of JavaScript
Functions are the verbs of JavaScript. They tell the program what to do, whether that’s adding numbers, computing random values, or combining sentences.

One function we’ll use is console.log(). It writes a message to the console, which is a behind-the-scenes view into what’s happening in your computer’s brain.

```JavaScript
const myName = "Lisa Simpson";
console.log(myName);
```
In the console, we’d see "Lisa Simpson" appear, because this is the data stored in the myName variable.

### Data Types
Data types are important because they tell the computer how the programmer wants to use the data.
- Numbers in JavaScript are, well, just numbers. Unlike other programming languages, which treat whole numbers and decimals differently, all numbers work the same way in JavaScript. Here’s how they’re written:
```JavaScript
let age = 30;
const pi = 3.14159265359;
```
- Boolean, which is a true or false value. It’s written in JavaScript like this:
```JavaScript
let myBool = true;
let yourBool = false;
```
- String in JavaScript is any combination of letters, numbers, or other characters you’d store in a variable. A string can have one letter, word, or number or multiple letters, words, or numbers — it’s all the same. For example:
```JavaScript
let myString = "don't have a cow, man";
let myKey = "ahxhb8321";
```

### String Concatenation
Here, we’ll use concatenation to combine strings in JavaScript.
```JavaScript
const firstName = "Lisa";
const lastName = "Simpson";

console.log(firstName + " " + lastName);
```
Notice how, between the variables, we added two quotation marks with a space. JavaScript is smart, but not smart enough to know that there should be a space between the variables to make it grammatically correct. You have to add it in yourself.

# Arrays and Objects

## Arrays

![Array Syntax](https://ga-instruction.s3.amazonaws.com/json/WDI-Fundamentals/assets/unit-8/array_syntax.png)

Arrays are data structures, which is a fancy way to say that they’re a means of organizing information. In an array, we place multiple values in a sequential list. The items in the list — known as elements — are separated by commas and situated between square brackets [ ].
```JavaScript
const beverages = ["coffee", "tea", "hot chocolate", "milk"];
const leapYears = [2016, 2020, 2024, 2028];
```

### Indices

Items in an array are stored in sequential order. Each element has an index — a number that tells us the position in the array at which the element can be found. Indices allow you to access and update array values.
```JavaScript
const animals = ["dog", "bird", "cat", "lizard"];
```
![Index Values](https://ga-instruction.s3.amazonaws.com/assets/tech/computer-science/intro-js/Lesson%202/animalsarray.png)

### Accessing Elements of an Array

To see what’s contained in an array, we use a format called bracket notation. Bracket notation is written like this: arrayName[0]. This tells JavaScript to find the array called arrayName, then look at the value at index 0.

```JavaScript
const favoriteFoods = ["ice cream", "pepperoni pizza", "apple pie", "almond butter"];
console.log(favoriteFoods[1]);
```

![Index Values](https://ga-instruction.s3.amazonaws.com/assets/tech/computer-science/intro-js/Lesson%202/foodarray.png)

### Updating Elements of an Array
Changing an element in an array is just as easy. To access a value from an array, we use the array name, followed by the index number of the element we want to update. We then simply write an assignment operator as if we were assigning a value to a variable.

```JavaScript
favoriteFoods[1] = "veggie burgers";
```
In this example, we’re replacing "pepperoni pizza", the element previously at index 1, with "veggie burgers".

### The Length Property

In addition to containing multiple elements, arrays also have a number of built-in properties and functions that give them many useful abilities.

All arrays have a property called length, which tells us how many elements are present in the array. To access this value, simply tack on .length to the end of an array’s name.

Here’s an example of .length in action:
```JavaScript
const numbers = [10, 20, 30, 40];
numbers.length;
// => 4 elements in the array
```

### Push and Pop
Just as we can use concatenation to modify strings, we can use array methods to work with arrays. A method manipulates items in an array, whether by sorting, removing, or adding data.

To start, let's look at two array methods that accomplish simple-yet-important functions:
- Push - Adds new items to the end of an array.	arrayName.push(elementToAdd)
- Pop	Removes items from the end of an array.	arrayName.pop()

## Objects
Here’s how we write an object: We start with the name of the object, followed by its properties, which are surrounded by curly braces:
```JavaScript
const aboutMe = {
  name: "Lisa Simpson",
  hometown: "Springfield, Oregon",
  age: 8,
  isABoss: true,
  hobbies: ["playing the saxophone", "political causes", "saving the world"]
};
```

Objects store properties — written as key-value pairs of data. Notice how we have strings, numbers, Booleans, and arrays all in aboutMe. With objects, you can store as much data as you want in whatever format you want. You will even see objects that store other objects as properties.

### Accessing Values From an Object With Dot Notation
Just as we can explore what’s in an array using bracket notation and properties, we can see what’s inside an object using dot notation. Dot notation is written like this: objectName.propertyName.
```JavaScript
const aboutMe = {
  name: "Lisa Simpson",
  hometown: "Springfield, Oregon",
  age: 8,
  isABoss: true,
  hobbies: ["playing the saxophone", "political causes", "saving the world"]
};
console.log(aboutMe.hometown);
```

### Creating New Properties in an Object
We can also use dot notation to add new key-value pairs to an object.
```JavaScript
aboutMe.dreamJob = "political activist"

const aboutMe = {
  name: "Lisa Simpson",
  hometown: "Springfield, Oregon",
  age: 8,
  isABoss: true,
  hobbies: ["playing the saxophone", "political causes", "saving the world"],
  dreamJob: "political activist"
};
```

## Object challenge

```JavaScript
let aboutMe = {
  firstName: 'Pavel',
  lastName: 'Ilin',
  age: 32,
  alive: true,
  mood: 'happy'
};

aboutMe.dreamJob = 'AI';

console.log(aboutMe);

console.log('Hello! My name is ' + aboutMe.firstName + ' ' + aboutMe.lastName + ' and I am ' + aboutMe.age + ' years old.');
```

# Control flow

### Comparison Statements
- >	Greater than	5 > 2
- >=	Greater than or equal to	5 >= 5
- <	Less than	2 < 200
- <=	Less than or equal to	1 <= 72
- ==	Loose equality tests if the left and right sides have equal values.	5 == "5"
- ===	Strict equality tests if the left and right sides have equal values AND are the same data type.	"apples" === "apples"
- !==	Inequality tests if the data type OR the value is different (basically, the opposite of ===).	5 !== "5

### Conditionals in Programming
We write conditionals in the form of if statements that tell the computer to execute or skip a certain code block if the comparison comes out to be true.
```JavaScript
if (assignmentsCompleted > .80) {
    console.log("Ready to graduate!");
}
```
In plain English, this is saying: “If the assignments completed are over 80%, then tell us, ‘Ready to graduate!’”.

![Conditionals](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/js-unit-assets/if-statement.png)

So far, our if statements are limited. Something only happens when the comparison is true. But what about when it’s false? Conditional statements can be extended with an else block, which gives the computer something else to do if the conditional comes out to be false.
```JavaScript
if (assignmentsCompleted > .80) {
    console.log("Ready to graduate!");
} else {
    console.log("Better catch up on your homework!");
}
```
### Conditions on Conditions on Conditions
```JavaScript
if (assignmentsCompleted > .80) {
    console.log("Ready to graduate!");
} else if (assignmentsCompleted > .65) {
   console.log("Better catch up on your homework!");
} else {
    console.log("You’ve got a lot of work left to do.");
}
```

```JavaScript
if (temperature < 60) {
    if (weather === "raining") {
        console.log("It's cold and raining. Time for a heavy rain jacket.");
    } else if (weather === "snowing") {
        console.log("It's cold and snowing. Get out the parka.");
    } else {
        console.log("It's cold and clear. Feels like sweater weather today.");
    }
} else {
    if (weather === "raining") {
        console.log("It's warm but it's raining. A light windbreaker will do.");
    } else if (weather === "sunny") {
        console.log("It's warm and sunny. Tank top it is.");
    } else {
        console.log("It's warm and clear. Regular old T-shirt day.");
    }
}
```

# Loops

We'll start with for loops, which programmers love for their accuracy and precision.

The syntax of a for loop in JavaScript may look a little cryptic — but don't fret. It can be broken down in terms we’ve already learned.

Here’s a basic for loop:
```JavaScript
for (let i = 0; i < 100; i++) {
  console.log(i);
}
```
### The Keyword and the Variable

![for loop](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/js-unit-assets/for-variable.png)
- We start with the for keyword, with the control statement wrapped in parentheses after it.
- In the control statement, we declare a variable upon which to operate: let i = 0. This variable, i, is our iterator. In this case, we’ll have it start at 0.
- To separate each part of our for loop statement, we must use semicolons.
![for loop](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/js-unit-assets/for-condition.png)
- Next comes the conditional statement: i < 100. Whenever the loop is wondering if it should keep going, it will check this condition.
- If the condition evaluates to true — in this case, if i is less than 100 — the loop will execute the code block and then check the conditional again.
- Once the condition evaluates to false, the loop will end. Here, once the i variable becomes equal to 100, this condition will become false and the loop will stop.
###The Final Expression
![for loop](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/js-unit-assets/for-operator.png)
- We’ve made it to the last part of the control statement: the final expression. This defines what the loop should do after each iteration of the code block. In this example, i++ is using the post-fix operator, ++, to say, “After each go-around of the loop, add 1 to the current value of the i variable.”

- Although i++ is the most common, you could perform any operation in the final expression — perhaps i-- or i += 2 — just as long as the operation brings the iterator closer to reaching the limit of the conditional statement.
### The Code Block
![for loop](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/js-unit-assets/for-action.png)
Once we’ve made it out of the control statement, which tells the loop how long it should run, we get to the code block, which tells the loop what to do in each iteration. Here, we’re simply logging the value of i to the console.
When the value has been logged, the loop will return to the control statement to see if it should keep going.

## Looping Over an Array
One of the most common uses of a for loop is to loop through each element of an array. We use the i iterator to represent the index of the array and start it at 0 so we can access elements from the first to the last index.

The loop below will console.log every element in the cookies array:
```JavaScript
const cookies = ["chocolate chip", "gingersnap", "oatmeal raisin", "shortbread"];
for (let i = 0; i < cookies.length; i++) {
    console.log(cookies[i]);
}
```

## “While” Loops
Let’s meet the simpler, cleaner cousin of the for loop: the while loop. It should be much easier to read and figure out what’s going on here, with no cryptic ++ or long control statements:
```JavaScript
let number = 0;
while (number < 11) {
    number = number + 1;
}
```
# Danger Zone!

while loops might seem nice and slick, but they’re notorious for causing infinite loops and crashing browsers everywhere.

In a for loop, the final expression ensures that we’re progressing toward making the conditional false. But with a while loop, you must ensure the code inside the code block gives you an exit strategy by eventually making the conditional statement false.

The loop below, for instance, is an easy way to crash your browser and freeze up the tab with unlimited executions of the code block. Because subtracting 1 from the number variable will always keep the conditional number < 500 true, this loop has no way of stopping.
```JavaScript
let number = 10;
while (number < 500) {
    number = number - 1;
}
```
### To “For” or to “While,” That Is the Question
- If you know exactly how many times the loop should execute, use a for loop for its precision. This includes iterating over an array, which has a specific amount of items.
- If you’re not sure how many times the loop has to run but you do know when it should stop, use a while loop.

# Functions in JavaScript

We can bundle up those lines of code into a function:
```JavaScript
function takeDamage() {
    player.health -= 1;
    player.damageTaken += 1;
    player.points -= 100;
}
```
## DRY - Don’t Repeat Yourself

### Defining a Function
![Function](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/js-unit-assets/function.png)
- First, we have the function keyword, which lets JavaScript know we’re declaring a function.
- Then, we write the function’s name — in this case, sayHello. A function’s name should always describe what the function does.
- The parentheses are there to define parameters or any input the function requires. This function has no parameters, but we still put empty () after the function name.
- Then, we have the code block we want to execute surrounded by curly braces. This should seem familiar — it’s the same way we defined a code block for conditionals and loops. The idea is the same; we define what we want to happen under certain conditions (in this case, when the function is invoked).

### Invoking a Function

```JavaScript
function sayHello() {
    console.log("Hello!");
}

sayHello();
```

### Introducing: Parameters
We can give the function different information to work with using parameters. Instead of doing the same thing with the same information each time, we have the function perform the same tasks on any data we give it. We can add multiple parameters separated by commas in the parentheses.

```JavaScript
function calculateTotal(price, salesTaxRate) {
   const totalAmount = price + (price * salesTaxRate);
   console.log("The total is $" + totalAmount);
}
```

### From Parameters to Arguments
When we invoke a function, we replace parameters with the data we want them to actually use. The data we provide when invoking a function is called an argument.

```JavaScript
function calculateTotal(price, salesTaxRate) {
   const totalAmount = price + (price * salesTaxRate);
   console.log("The total is $" + totalAmount);
}

calculateTotal(4.50, .10);
```
In this example, 4.50 corresponds to price and .10 corresponds to salesTaxRate. The order the arguments are written is important, because it tells JavaScript which parameters they represent.

### What Comes Out of a Function
The output of a function is called its return value, and we use the return keyword inside the function to define the output.

```JavaScript
function calculateTotal(price, salesTaxRate) {
   return (price + (price * salesTaxRate));
}

const total = calculateTotal(4.5, .10);
```

### Return vs. Console.log
![Return and print](https://ga-instruction.s3.amazonaws.com/assets/tech/computer-science/intro-js/vending-machine.png)


## Scope

### Global Scope
A globally scoped variable is one to which the entire program has access. Most of the variables we’ve defined so far have been global in scope. They’ve been defined outside of a function or specific code block, which means all scripts and functions on a webpage can access them.

In the code below, the brother variable is a global variable because it’s defined on its own, outside of a specific function:
```JavaScript
const brother = "Phillip";

function sayHello() {
   console.log("Hello " + brother);
}

sayHello();   // brother can be accesed here

console.log(brother);   // and brother can be accessed here
```

### Local Scope
Conversely, a locally scoped variable is declared inside of a code block and can only be accessed by other members of the same code block. It cannot be referenced outside of that code block, which means it cannot be called or used outside of the braces in which it’s contained.

```JavaScript
function sayHello() {
   const brother = "Phillip";
   console.log("Hello " + brother);
};

sayHello();   // brother would be logged here...

console.log(brother);   // but it can’t be accessed on its own here.
```

## The Arrow Function
In newer versions of JavaScript, there’s another syntax for defining functions called arrow functions. Here’s the same function, written both with the function keyword and as an arrow function:

```JavaScript
// Older way:
function calculateTotal(price, salesTaxRate) {
   return (price + (price * salesTaxRate));
}
calculateTotal(4.5, .10);

// Newer way:
const calculateTotal = (price, salesTaxRate) => {
   return (price + (price * salesTaxRate));
}
calculateTotal(4.5, .10);
```

# DOM - Document Object Model
**Document:** The document is the webpage — typically the HTML document.

**Object:** Every HTML element — <head>, <body>, or <p> — is an object. Because they’re objects, we can use methods and properties to change, delete, and add to them.

**Model:** The model describes how the objects are laid out, often in a hierarchical tree. We call this the “DOM tree,” shown below. (You might see the terms “node,” “object,” or “element” all used interchangeably when referring to parts of the DOM.)

![DOM](https://ga-instruction.s3.amazonaws.com/json/WDI-Fundamentals/assets/unit-11/Slide-17-DOM-Tree-Annotated.svg)

The DOM powers a lot of the everyday interactions on webpages with which you might be familiar. Its four core capabilities are to:
![DOM](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/js-unit-assets/dom.png)

### Get Content
- The DOM allows you to get elements and content from a webpage.
![get](https://ga-instruction.s3.amazonaws.com/json/WDI-Fundamentals/assets/unit-11/Slide-6-Form-Email.svg)

### Set Content
Maybe we want to change the text of the <h1> on the site, or perhaps we want to update the src attribute of an image when the user clicks a button. We can dynamically update any of the HTML, text content, or attributes of the elements on our page.

### Add Effects
Maybe we want a dropdown menu to expand when a user clicks on an icon. Or maybe we want a “Success” message to fade in when our user submits a form. Perhaps we want different images to fade in and out as a user scrolls down a page.

### Create Event Listeners
- We don’t always want the final state of our webpage to be the same as its initial state. Rather, it should respond to a user’s behavior on the page.
- JavaScript allows us to react to a user’s actions by having the DOM “listen” or “wait” for a user to take action before we run a block of code.
- For example, maybe we want a button to change color after the user clicks it. To do so, we’d attach an event listener to the button that’s triggered by a click.

## Finding DOM Elements
The first thing you have to do when working with the DOM is tell JavaScript what you’re looking for. Because HTML and JavaScript don’t talk directly to each other, you have to use special DOM methods to select the element you want to manipulate. You’re basically telling the DOM, “Go check out where this element is because we're probably doing something with it in a bit.” (You’ll also hear this referred to as “grabbing” elements in the DOM.)

There are many methods for selecting specific DOM elements, but we’ll keep things simple by using these two:
- document.querySelector(): Finds the first matching element.
- document.querySelectorAll(): Finds all matching elements.
The document written before the query is telling JavaScript to check out the HTML page (aka, the document). Information about the specific element you want to grab goes inside of the (). Let’s look at that next.

### querySelector and querySelectorAll
- document.querySelector('p')	- Grabs the first <p> in the document.
- document.querySelector('.magic') - Grabs the first element with the class "magic" in the document.
- document.querySelector('#hero')	- Grabs the first element with an ID of "hero" in the document.
- document.querySelector('.magic p') - Grabs the first <p> inside an element with the class "magic".
- document.querySelectorAll works in basically the same way, except it will grab ALL of the elements that match the query.

### Manipulating the DOM

Once you’ve grabbed an element from the DOM, you can access it, update it, and more. You can do many things with a DOM element.

element.innerHTML	- Returns or sets the HTML content of the element.	- document.querySelector('h2').innerHTML = 'Hello there!'; updates the <h2> to read “Hello there!”.
element.style	- Returns or sets the style attributes of the element.	- document.querySelector('h2').style.color = 'blue'; changes the color of the <h2> to blue.
element.className	- Sets the class of the element.	- document.querySelector('h2').className = 'complete'; changes the class of the <h2> to complete.
element.parentNode	- Returns the parent, or containing element, of the requested element.	- document.querySelector('h2').parentNode; returns the parent element of the <h2>.
element.childNodes	- Returns all of the child nodes that an element contains. -	document.querySelector('h2').childNodes; returns the child nodes of the <h2>.

### Getting, Setting, and Removing Attributes

There are methods for DOM elements that can be used to get, update, or remove properties. An especially useful trio of methods is getAttribute(), setAttribute(), and removeAttribute(), which can read or write any HTML attribute of a DOM element. Let’s take a look:
- const h1ID = document.querySelector('h1').getAttribute('id'); // This would store the ID attribute of the <h1> in the variable called h1ID.
- document.querySelector('#title').setAttribute('class', 'blue'); // This would give the element with the ID of "title" a class of "blue."
- document.querySelectorAll('p').removeAttribute('class'); // This would remove the class attribute from all <p> elements.

```JavaScript
const paragraph = document.createElement('p');
paragraph.innerText = "Your passwords did not match.";
paragraph.setAttribute("class", "registration-error");

// This is what's created: <p class="registration-error">Your passwords did not match.</p>
```
Let’s break these steps down:
- Create a JavaScript variable, paragraph.
- Give that variable some information: the new element creation property, document.createElement('p'). Right now, this <p> has no content in it. Let’s add to it.
- Use the innerHTML property to add text to the paragraph variable: "Your passwords did not match."
- Use setAttribute() to give the paragraph a class of registration-error.

# Responding to Browser Events

### Event Listeners

```JavaScript
onload  // When the page loads.
onclick  // When a user clicks something.
onmouseover  // When a user hovers their mouse over something.
onfocus  // When a user puts the cursor on a form field.
```

### onclick

```JavaScript
elementToGrab().onclick = function() {
   // Code that should run
};

document.querySelector('#login').onclick = respondToLoginAttempt;
```

### addEventListener
You can also add event listeners using a method called addEventListener(). Similar to onclick, this method tells elements to wait for something to happen in the browser and then execute a specific function when it does.

```JavaScript
function sayHello() {
    console.log("Hello!");
}
```

A key difference is that onclick will overwrite any previous click listeners on the element, whereas addEventListener() will preserve existing listeners.
```JavaScript
document.querySelector('button').addEventListener('click', sayHello);

or

document.querySelector('#login').addEventListener('click', respondToLoginAttempt);
```

### The Event Object
When attaching functions as event listeners, you might want that function to use the element that was clicked. Maybe you want to grab the text that was clicked to store or update it.
```JavaScript
document.querySelector('#disappearing-button').onclick = function(e) {
    console.log(e.target);
    e.target.remove();
}
```