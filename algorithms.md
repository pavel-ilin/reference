# Closure
Return value of the function is another function.


# Recursion
Function call itself repeatedly before condition is met.

```javascript
let something = function (i){
  if (i >= 5){
    console.log(i)
  return something(i - 1)
  }
  else (
    console.log(i)
  )
}

something(10)
```