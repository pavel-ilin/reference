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


Binary search tree

```javascript
//tree only one root
//parent to child relations no two parents
//binary search tree at most have 2 children

class Node {
  constructor(value){
    this.value = value
    this.left = null
    this.right = null
  }
}

class BinarySearchTree {
  constructor(){
    this.root = null
  }

 insert(value){
      let newNode = new Node(value)
      if(!this.root)  this.root = newNode

      const search = node => {
        if(value < node.value){
           if(!node.left){
            node.left = newNode
          }else{
            search(node.left)
          }
        }
        else if(value > node.value){

          if(!node.right){
            node.right = newNode
          }else{
            search(node.right)
          }
        }
      }
  search(this.root)
    }


  find(value){
  let current = this.root

  while(current){
    if(value === current.value){
      return true
    }
    if(value < current.value){
      current = current.left
    }else{
      current = current.right
    }
  }
return false
}
 }

const bts = new BinarySearchTree()

for (let i = 1; i <= 10; i++){
  bts.insert(i)
}

console.log(bts)
```

