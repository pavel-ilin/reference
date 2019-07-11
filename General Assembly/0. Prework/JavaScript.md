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
