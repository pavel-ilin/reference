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

