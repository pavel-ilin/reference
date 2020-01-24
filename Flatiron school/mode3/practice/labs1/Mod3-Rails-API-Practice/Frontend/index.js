// Code your solution here
const url = 'http://localhost:3000/shoes/'
const showList = document.getElementById('shoe-list')
const reviewList = document.getElementById('reviews-list')
const mainShoe = document.getElementById('main-shoe')
const form = document.getElementById('form-container')
// debugger

fetch(url)
.then(r => r.json())
.then(shoes => {
  shoes.forEach(shoe => {
    showList.innerHTML += `<li data-id = '${shoe.id}' class="list-group-item">${shoe.name}</li>`
  })
})

showList.addEventListener('click', event => {

    fetch(url+event.target.dataset.id)
    .then(r => r.json())
    .then(shoe => {
      reviewList.innerHTML = ''
      shoe.reviews.forEach(review => {
        reviewList.innerHTML += `<li class="list-group-item">${review.content}</li>`
      })
      // debugger
      mainShoe.innerHTML = ''
      mainShoe.innerHTML = `
      <img class="card-img-top" id="shoe-image" src="${shoe.image}">
      <div class="card-body">
        <h4 class="card-title" id="shoe-name">${shoe.name}</h4>
        <p class="card-text" id="shoe-description">${shoe.description}</p>
        <p class="card-text"><small class="text-muted" id="shoe-price">$${shoe.price}</small></p>
        <div class="container" id="form-container">
        <form id="new-review" data-id ="${shoe.id}">
          <div class="form-group">
            <textarea class="form-control"  name = "review" id="review-content" rows="3"></textarea>
            <input type="submit" class="btn btn-primary"></input>
          </div>
        </form>
        </div>
      </div>
      <h5 class="card-header">Reviews</h5>
      <ul class="list-group list-group-flush" id="reviews-list">
      ${reviewList.innerHTML}
      </ul>`

    })
})

mainShoe.addEventListener('submit', event => {
  event.preventDefault()
  let newReview = event.target.review.value
  // let id = event.target.dataset.id

  fetch(`http://localhost:3000/shoes/${event.target.dataset.id}/reviews`, {
    method: 'POST',
    headers: {
      'content-type': 'application/json'
    },
    body: JSON.stringify({
      content: newReview
    })


  })
  .then(r => r.json())
  .then(respond => {

    let liNew = document.createElement('LI')
    liNew.className = 'list-group-item'
    liNew.innerText = respond.content
    // let showList = document.getElementById('reviews-list')

    document.getElementById('reviews-list').append(liNew)

    // reviewList1.innerHTML += `<li class="list-group-item">${respond.content}</li>`
  })

})






// const shoesListUl = document.querySelector('#shoe-list')
// const shoeMainDiv = document.querySelector('#main-shoe')
// let reviewsUL = document.querySelector('#reviews-list')
// let img = document.querySelector('#shoe-image')
// let h4 = document.querySelector('#shoe-name')
// let p = document.querySelector('#shoe-description')
// let pPrice = document.querySelector('#shoe-price')
//
// fetch(url)
// .then(r => r.json())
// .then(shoes => {
//   shoes.forEach(shoe => {
//     shoesListUl.innerHTML += `<li class="list-group-item" id="${shoe.id}">${shoe.name}</li>`
//     shoe.reviews.forEach(review => {
//       let li = document.createElement('LI')
//       li.innerText = review.content
//       reviewsUL.append(li)
//     })
//   })
//   img.src = shoes[0].image
//   pPrice.innerText = shoes[0].price
//   p.innerText  = shoes[0].description
//   h4.innerText = shoes[0].name
//   // debugger
//
// shoeMainDiv.append(h4, img, p, pPrice, reviewsUL)
//
//
// const form = document.querySelector('#new-review')
// formSubmit(form)
// })
//
// shoesListUl.addEventListener('click', event => {
//   fetch(url+event.target.id)
//   .then(r => r.json())
//   .then(shoe => {
//
//     shoeMainDiv.innerHTML = ''
//
//     shoeMainDiv.innerHTML = `
//     <img class="card-img-top" id="shoe-image" src="${shoe.image}">
//     <div class="card-body">
//     <h4 class="card-title" id="shoe-name">${shoe.name}</h4>
//     <p class="card-text" id="shoe-description">${shoe.description}</p>
//     <p class="card-text"><small class="text-muted" id="shoe-price">$${shoe.price}</small></p>
//
//     <div class="container" id="form-container">
//     <form id="new-review" data-id='${shoe.id}'>
//       <div class="form-group">
//         <textarea name = 'input' class="form-control" id="review-content" rows="3"></textarea>
//         <input type="submit" class="btn btn-primary"></input>
//       </div>
//     </form>
//     </div>`
//
//     reviewsList.innerHTML += `<li class="list-group-item">All my friends are jealous of me because of this shoe!</li>`
//
//
// const form = document.querySelector('#new-review')
// formSubmit(form)
//   })
// })
//
//
// function formSubmit(form) {
//   form.addEventListener('submit', event => {
//     event.preventDefault()
//
//     fetch(`http://localhost:3000/shoes/${event.target.dataset.id}/reviews`, {
//       method: "POST",
//       headers: {
//           "Content-Type": "application/json",
//           "Accept": "application/json"
//       },
//       body: JSON.stringify({
//           content: event.target.input.value
//       })
//     })
//     .then(r => r.json())
//     .then(respond => {
//
//       debugger
//     })
//
//     })
// }


// debugger


//<textarea name = 'input' class="form-control" id="review-content" rows="3"></textarea>
// <input type="submit" class="btn btn-primary"></input>
// event.target.["review-content"].value
