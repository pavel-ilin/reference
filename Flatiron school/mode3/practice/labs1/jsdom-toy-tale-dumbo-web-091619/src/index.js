let addToy = false

document.addEventListener("DOMContentLoaded", ()=>{
  const addBtn = document.querySelector('#new-toy-btn')
  const toyForm = document.querySelector('.container')
  addBtn.addEventListener('click', () => {
    // hide & seek with the form
    addToy = !addToy
    if (addToy) {
      toyForm.style.display = 'block'
    } else {
      toyForm.style.display = 'none'
    }
  })
})

let toyDiv = document.getElementById("toy-collection")
let toyIndex = "http://localhost:3000/toys"
let toyButton = document.getElementById("new-toy-btn")
let likeButton = document.getElementsByClassName("like-btn")

// fetch to all elements for display
fetch(toyIndex)
.then(response => response.json())
.then(resObj => {
  resObj.forEach((toy) => {
    displayToys(toy)
  })
})

// display toys
function displayToys(toy){
  let toyCard = document.createElement("div")
  toyCard.className = "card"

  toyCard.innerHTML += `<h2>${toy.name}</h2>
  <img src="${toy.image}" class="toy-avatar" />
  <p>${toy.likes} Likes </p>
  <button class="like-btn">Like <3</button>`

  toyDiv.append(toyCard)

  //adding likes
  toyCard.addEventListener("click", (event) => {
    if (event.target.className === "like-btn") {
      // let toyElement = toy
      fetch(toyIndex + "/" + toyElement.id, {
        method: 'PATCH',
        body: JSON.stringify({
          likes: toy.likes += 1
        }),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }
      })
      .then(res => res.json())
      .then(data => {
        let likeInfo = toyCard.getElementsByTagName('p')
        likeInfo[0].innerText = `${data.likes} Likes`
      })
    }
  })
}


// Create new toy
toyButton.addEventListener("click", (event) => {
  let toyForm = document.getElementsByClassName("add-toy-form")
  toyForm[0].addEventListener("submit", (event) => {
    event.preventDefault()
    let toyName = event.target.name.value
    let toyURL = event.target.image.value
    fetch(toyIndex, {
      method: 'POST',
      body: JSON.stringify({
        name: toyName,
        image: toyURL,
        likes: 0
      }),
      headers: {
        'Content-Type': 'application/json'
      }
    })
    .then(r => r.json())
    .then(createdToy => {displayToys(createdToy)})
  })
})