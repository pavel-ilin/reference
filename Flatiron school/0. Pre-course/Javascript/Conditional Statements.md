### If statement

```javascript
if (5 > 2) {
  console.log("5 is greater than 2")
}
```

else
```javascript
if (false) {
   console.log("This will never get printed because the above statement evaluates to false.")
} else {
   console.log("This will get printed!")
}
```

```javascript
var dog = "satisfied"

if (dog === "hungry") {
  console.log("Refilling food bowl.")
} else {
  console.log("Reading newspaper.")
}
```

else if
```javascript
var dog = "thirsty"

if (dog === "hungry") {
  console.log("Refilling food bowl.")
} else if (dog === "thirsty") {
  console.log("Refilling water bowl.")
} else {
  console.log("Reading newspaper.")
}
```
We can cascade as many else if statements as we wish, however else if statements can only be used following an if statement, and must precede the associated else statement (if used).
```javascript
var dog = "cuddly"

if (dog === "hungry") {
  console.log("Refilling food bowl.")

} else if (dog === "thirsty") {
  console.log("Refilling water bowl.")

} else if (dog === "playful") {
  console.log("Playing tug-of-war.")

} else if (dog === "cuddly") {
  console.log("Snuggling.")

} else {
  console.log("Reading newspaper.")
}
```
