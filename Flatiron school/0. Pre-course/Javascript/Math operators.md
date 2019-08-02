### Basic Math

```javascript
1 + 80 // 81
60 - 40 // 20
2 * 3.4 // 6.8 (there's that floating-point arithmetic again...)
5.0 / 2.5 // 2
```

### Math + Assignment

```javascript
var number = 5

number++ // 5... hmmmm

number // 6 -- the number was incremented after it was evaluated

number-- // 6

number // 5

--number // 4

++number // 5

// assume that number is equal to 5 (and resets for every example).
// += modifies the value to the operator's left by adding to it the value to the operator's right:
number += 3 // 8
number -= 2 // 3
number *= 10 // 50
number /= 5 // 1
```
The thing to remember about these methods is that they modify the variable in place. So if we have two functions that depend on the same external variable, the order in which they're called matters. Follow along :
```javascript
var number = 10

function add5() {
  number += 5
}

function divideBy3() {
  number /= 3
}

divideBy3()

console.log(number) // 3.333333333335

add5()

console.log(number) // 8.333333333335

// reset number
number = 10

add5()

console.log(number) // 15

divideBy3()

console.log(number) // 5

// Because these methods are more explicit, we prefer += to ++ and -= to -- (usually).
```

## Parsing Numbers
parseInt()
```javascript
parseInt('2', 10) // 2

parseInt('2.2222', 10) // 2
```
parseFloat()
```javascript
parseFloat('80.123999') // 80.123999
```
