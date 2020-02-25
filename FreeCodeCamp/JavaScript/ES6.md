# Use Destructuring Assignment to Assign Variables from Nested Objects

```javascript
const LOCAL_FORECAST = {
  yesterday: { low: 61, high: 75 },
  today: { low: 64, high: 77 },
  tomorrow: { low: 68, high: 80 }
};

const { today: { low: lowToday, high: highToday } } = LOCAL_FORECAST;

console.log(lowToday);
console.log(highToday);

```

# Use Destructuring Assignment to Assign Variables from Arrays
```javascript
let a = 8, b = 6;
// change code below this line
[a, b] = [b, a];
// change code above this line
console.log(a); // should be 6
console.log(b); // should be 8
```

# Use Destructuring Assignment with the Rest Parameter to Reassign Array Elements

```javascript
const source = [1,2,3,4,5,6,7,8,9,10];
function removeFirstTwo(list) {
  "use strict";
  // change code below this line
  const [a, b, ...arr] = list; // change this
  // change code above this line
  return arr;
}
const arr = removeFirstTwo(source);
console.log(arr); // should be [3,4,5,6,7,8,9,10]
console.log(source); // should be [1,2,3,4,5,6,7,8,9,10];
```


# Regular Expressions: Match a Literal String with Different Possibilities

```javascript
let petString = "James has a pet cat.";
let petRegex = /dog|cat|bird|fish/;
let result = petRegex.test(petString);
```

# Find More Than the First Match

```javascript
let twinkleStar = "Twinkle, twinkle, little star";
let starRegex = /Twinkle/gi;
let result = twinkleStar.match(starRegex);
```
