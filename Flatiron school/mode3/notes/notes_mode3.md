# Meta level
- selectors
- listeners



## Retrieving elements

```javascript
let button = document.getElementById("some_id")

let variableUL = document.querySelector("#id")
// let variableUL = document.querySelector(".class")
```



## Adding listener to element we retrieved and adding creating new element with content

```javascript
button.addEventListener('click', function(){
  let variable = document.createElement('element')
  variable.innerText = 'Some content'

  //adding new element with content to html page
  variableUL.appendChild(variable)
})
```



## Getting input from form

Adding submit event on form is best practice (not to the button)

```javascript
let newForm = document.getElementById("form_id")

newForm.addEventListener('submit', function(event){
  event.preventDefault()
  // let form = event.target['form_id']
  let formInput = event.target.name
  let inputString = form.value
})
```

## Closure and delegation

closure - adding event listener to every element
delegation - add listener to stable parent element



# Fetch

Asynchronies code - not direct execution sequence

Extracting dictionary from 'promise'

```javascript
let variable = fetch('url')

variable.then(function(response){
  response.json().then(function(jsonRespons){
    console.log(jsonRespons)
  })
})
```

Right way to extract data

```javascript
let variable = fetch('url')

apiPromise = variable.then(function(response){
  return response.json()
})

apiPromise.then(function(jsonRespons){
  console.log(jsonRespons)
})
```

Super right way do extract data

```javascript
let variable = fetch('https://dog.ceo/api/breeds/image/random')
.then(r => r.json())
.then(i => {

  console.log(i)

})
```


# Fetch - POST

Sending POST request to backend and getting respond from backend

```javascript
let inputVariable = 'Some input'
let imgInputVariable = 'Url to the image'

  fetch('url', {
    method: "POST",
    headers: {
      'content-type': 'application/json',
      'accept': 'application/json'
    },
    body: JASON.stringify({
      name: inputVariable,
      img_url: imgInputVariable
    })
  })
  .then((r) => r.json())
  .then((i) => {
    //DOM actions
  }
```

# ES6

```javascript
const nameVar = {
  key1 = 'key1',
  key2 = 'key2'
}

const {key1, key2} = nameVar
```

```javascript
class ClassName {
  constructor ({key1, key2}) {
    this.key1: key1
    this.key2: key2
  }

}
```

# Rails as an API

```
rails new super-awesome-api --api --database=postgresql
```

