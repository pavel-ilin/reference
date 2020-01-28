# Basic

Appending Variables to Strings

```JavaScript
var someAdjective = 'test';
var myStr = "Learning to code is ";
myStr += someAdjective
```

Use Bracket Notation to Find the Nth Character in a String

```JavaScript
var lastName = "Lovelace";
var thirdLetterOfLastName = lastName[2];
```

Use Bracket Notation to Find the Last Character in a String

```JavaScript
var lastName = "Lovelace";
var lastLetterOfLastName = lastName[lastName.length - 1];
```

Use Bracket Notation to Find the Nth-to-Last Character in a String

```JavaScript
var lastName = "Lovelace";
var secondToLastLetterOfLastName = lastName[lastName.length - 2];
```

Selecting from Many Options with Switch Statements

```JavaScript
function caseInSwitch(val) {
  var answer = "";
  switch(val){
    case 1:
    answer = 'alpha';
    break;

    case 2:
    answer = 'beta'
    break;

    case 3:
    answer = 'gamma'
    break;

    case 4:
    answer = 'delta'
    break;

    default:
    answer = 'stuff'
    break
  }
  return answer;
}
```

Returning Boolean Values from Functions

```JavaScript
function isLess(a, b) {
  return a < b
}
```

Counting CardsPassed
In the casino game Blackjack, a player can gain an advantage over the house by keeping track of the relative number of high and low cards remaining in the deck. This is called Card Counting.
Having more high cards remaining in the deck favors the player. Each card is assigned a value according to the table below. When the count is positive, the player should bet high. When the count is zero or negative, the player should bet low.

```JavaScript
function cc(card) {
  // Only change code below this line
  switch (card) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      count++;
      break;
    case 10:
    case "J":
    case "Q":
    case "K":
    case "A":
      count--;
      break;
  }
  if (count > 0) {
    return count + " Bet";
  } else {
    return count + " Hold";
  }
  // Only change code above this line
}
cc(2); cc(3); cc(7); cc('K'); cc('A');
```

Record Collection
You are given a JSON object representing a part of your musical album collection.
Each album has several properties and a unique id number as its key.
Not all albums have complete information.

```JavaScript
var collection = {
  2548: {
    album: "Slippery When Wet",
    artist: "Bon Jovi",
    tracks: [
      "Let It Rock",
      "You Give Love a Bad Name"
    ]
  },
  2468: {
    album: "1999",
    artist: "Prince",
    tracks: [
      "1999",
      "Little Red Corvette"
    ]
  },
  1245: {
    artist: "Robert Palmer",
    tracks: [ ]
  },
  5439: {
    album: "ABBA Gold"
  }
};
function updateRecords(id, prop, value) {

  if(value === "") delete collection[id][prop];
   else if(prop === "tracks") {
     collection[id][prop] = collection[id][prop] || [];
     collection[id][prop].push(value);
   } else {
     collection[id][prop] = value;
   }

 return collection;
}
// Alter values below to test your code
updateRecords(5439, "artist", "ABBA");
```


## Loops

do-while loop

```JavaScript
let result = "";
let i = 0;

do {
  i += 1;
  result += i;
} while (i < 5);

console.log(result);
```

## Recursion
The if statement checks to see if sum is evaluating the base case, n <= 0, or not.
If it is, then sum returns the answer, arr[0] - the sum of elements from 0 to 0 inclusive.
Otherwise it recurses by evaluating a simpler function call, sum(arr, n - 1).
Once that returns it adds a single array element, arr[n], to it and returns that sum.

```JavaScript
function sum(arr, n) {
  if (n <= 0) {
    return arr[0];
  } else {
    return sum(arr, n - 1) + arr[n];
  }
}
```

Generate Random Fractions with JavaScript

```JavaScript
Math.random()
```

Generate Random Whole Numbers within a Range

```JavaScript
function randomRange(myMin, myMax) {
  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;
}
```