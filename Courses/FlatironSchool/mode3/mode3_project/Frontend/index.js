let categoriesUl = document.querySelector('#categories')
let productsUl = document.querySelector('#products')
let productDiv = document.querySelector('#display-product')
let newProductBTN = document.getElementById("new-product")
let addProductDIV = document.getElementById("add-product")
let frontImg = document.querySelector('#front-img1')
let divRow1 = document.querySelector('.row')

fetch('http://localhost:3000/categories')
.then(r => r.json())
.then(respond => {
  respond.forEach(item => {
    let li = document.createElement('LI')
    li.innerText = item.name
    li.setAttribute('data-id' , item.id)
    li.setAttribute('class', 'btn btn-warning')
    li.addEventListener('click', event => {renderProductsList(event)})
    categoriesUl.append(li)
  })
  addNewProduct(respond)
})

function renderProductsList(event){

  fetch(`http://localhost:3000/categories/${event.target.dataset.id}`)
  .then(r => r.json())
  .then(respond => {

    divRow1.className = "row1";
    frontImg.id = 'front-img'

    // debugger
    while (productsUl.firstChild){
      productsUl.removeChild(productsUl.firstChild)
    }

    while (addProductDIV.firstChild){
      addProductDIV.removeChild(addProductDIV.firstChild)
    }

    let iframe = document.createElement('iframe')
    iframe.setAttribute('style', 'width:0;height:0;border:0; border:none;')
    iframe.setAttribute('allow', 'autoplay')
    iframe.setAttribute('src', 'icq.mp3')

    respond.products.forEach(product => {
      let li = document.createElement('li')
      li.innerText = product.name
      li.setAttribute('data-id' , product.id)
      li.setAttribute('class', 'list-group-item')
      li.addEventListener('click', event => {renderProduct(event)})

      productsUl.append(li, iframe)
    })
  })
}

function renderProduct(event){
  fetch(`http://localhost:3000/products/${event.target.dataset.id}`)
  .then(r => r.json())
  .then(respond => {
    while (productDiv.firstChild){
      productDiv.removeChild(productDiv.firstChild)
    }

    frontImg.remove()
    let iframe = document.createElement('iframe')
    iframe.setAttribute('style', 'width:0;height:0;border:0; border:none;')
    iframe.setAttribute('allow', 'autoplay')
    iframe.setAttribute('src', 'click-sound.mp3')

    let h1 = document.createElement('H1')
    let p = document.createElement('P')
    let pCost = document.createElement('P')
    let pOrigin = document.createElement('P')
    let pRating = document.createElement('P')
    let img = document.createElement('IMG')
    let reviewsUl = document.createElement('UL')

    let form = document.createElement('form')
    let reviewAuthorLabel = document.createElement('label')
    let reviewText = document.createElement('textarea')
    let reviewTextLabel = document.createElement('label')
    let reviewAuthor = document.createElement('input')

    let reviewSubmit = document.createElement('input')

    let retingSelectLabel = document.createElement('label')
    let retingSelect = document.createElement('select')
    let optionOne = document.createElement('option')
    let optionTwo = document.createElement('option')
    let optionThree = document.createElement('option')
    let optionFour = document.createElement('option')
    let optionFive = document.createElement('option')

    let buyButton = document.createElement('button')
    buyButton.innerText = 'Buy'
    buyButton.setAttribute('class', 'btn btn-success')
    buyButton.addEventListener('click', event =>{buyProduct(event, respond.name)})

    let submitReviewButton = document.createElement('button')
    submitReviewButton.innerText = 'Submit Review'
    submitReviewButton.setAttribute('class', 'btn btn-dark')
    submitReviewButton.addEventListener('click', event =>{newReview(event, respond)})

    h1.innerText  = respond.name
    h1.className = "product-show-title"
    p.innerText = respond.description
    p.setAttribute('class', "tab-content")
    pCost.innerText = `Price: ${respond.price}`
    pOrigin.innerText = `Origin: ${respond.origin}`

    if (respond.average_rating === null){
      pRating.innerText = `Average rating: ${0}`
    }
    else {
      pRating.innerText = `Average rating: ${respond.average_rating}`
    }

    pRating.setAttribute('id', 'average_rating')

    img.setAttribute('src', respond.image)
    img.setAttribute('height', '500')
    img.setAttribute('width', '500')

    reviewsUl.setAttribute('id', 'reviews-list')

    // form.setAttribute('id', respond.id)
    // form.addEventListener('submit',  event => {submitReview(event)})
    // form.setAttribute('class', 'input-group input-group-sm mb-3')
    //
    // reviewTextLabel.setAttribute('name', 'review')
    // reviewTextLabel.innerText = 'Review'
    // reviewText.setAttribute('name', 'review')
    // reviewText.setAttribute('class', 'input-group-text')
    //
    // reviewAuthor.setAttribute('name', 'author')
    // reviewAuthorLabel.innerText = 'Author'
    // reviewAuthorLabel.setAttribute('name', 'author')
    //
    // reviewSubmit.setAttribute('type', 'submit')
    // reviewSubmit.setAttribute('class', 'btn btn-outline-secondary')
    //
    // retingSelectLabel.setAttribute('name', 'rating')
    // retingSelectLabel.innerText = 'Rating'
    // retingSelect.setAttribute('name', 'rating')
    // optionOne.setAttribute('value', '1')
    // optionOne.innerText = '1'
    // optionTwo.setAttribute('value', '2')
    // optionTwo.innerText = '2'
    // optionThree.setAttribute('value', '3')
    // optionThree.innerText = '3'
    // optionFour.setAttribute('value', '4')
    // optionFour.innerText = '4'
    // optionFive.setAttribute('value', '5')
    // optionFive.innerText = '5'
    //
    //
    // retingSelect.append(optionOne, optionTwo, optionThree, optionFour, optionFive)
    // form.append(reviewTextLabel, reviewText, reviewAuthorLabel, reviewAuthor, retingSelectLabel, retingSelect, reviewSubmit)

    respond.reviews.forEach(review => {
      let reviewLi = document.createElement('li')
      let reviewText = document.createElement('p')
      let reviewAuthor = document.createElement('p')
      let deleteButton = document.createElement('button')

      reviewText.innerText = review.text
      reviewAuthor.innerText = review.author
      deleteButton.innerText = 'Delete'
      deleteButton.setAttribute('id', review.id)
      deleteButton.setAttribute('data-id', event.target.dataset.id)
      deleteButton.setAttribute('class', 'btn btn-danger')
      deleteButton.addEventListener('click', event => {deleteReview(event)})

      reviewLi.append(reviewText, reviewAuthor, deleteButton)
      reviewsUl.append(reviewLi)

    })
      // productDiv.append(h1, p, img, pCost, pOrigin, pRating, buyButton, submitReviewButton, form, reviewsUl)
      productDiv.append(h1, p, img, pCost, pOrigin, pRating, buyButton, submitReviewButton, reviewsUl, iframe)
  })
}

function newReview(event, respond){
  modal.style.display = "block";

  while (addProductDIV.firstChild){
    addProductDIV.removeChild(addProductDIV.firstChild)
  }

  let form = document.createElement('form')
  let reviewAuthorLabel = document.createElement('label')
  let reviewText = document.createElement('textarea')
  let reviewTextLabel = document.createElement('label')
  let reviewAuthor = document.createElement('input')

  let reviewSubmit = document.createElement('input')

  let retingSelectLabel = document.createElement('label')
  let retingSelect = document.createElement('select')
  let optionOne = document.createElement('option')
  let optionTwo = document.createElement('option')
  let optionThree = document.createElement('option')
  let optionFour = document.createElement('option')
  let optionFive = document.createElement('option')

  form.setAttribute('id', respond.id)
  form.addEventListener('submit',  event => {submitReview(event)})
  form.addEventListener('submit', event => {
  modal.style.display = "none";
  })

  form.setAttribute('class', 'input-group input-group-sm mb-3')

  reviewTextLabel.setAttribute('name', 'review')
  reviewTextLabel.innerText = 'Review'
  reviewText.setAttribute('name', 'review')
  reviewText.setAttribute('class', 'input-group-text')

  reviewAuthor.setAttribute('name', 'author')
  reviewAuthorLabel.innerText = 'Author'
  reviewAuthorLabel.setAttribute('name', 'author')

  reviewSubmit.setAttribute('type', 'submit')
  reviewSubmit.setAttribute('class', 'btn btn-outline-secondary')

  retingSelectLabel.setAttribute('name', 'rating')
  retingSelectLabel.innerText = 'Rating'
  retingSelect.setAttribute('name', 'rating')
  optionOne.setAttribute('value', '1')
  optionOne.innerText = '1'
  optionTwo.setAttribute('value', '2')
  optionTwo.innerText = '2'
  optionThree.setAttribute('value', '3')
  optionThree.innerText = '3'
  optionFour.setAttribute('value', '4')
  optionFour.innerText = '4'
  optionFive.setAttribute('value', '5')
  optionFive.innerText = '5'

  retingSelect.append(optionOne, optionTwo, optionThree, optionFour, optionFive)
  form.append(reviewTextLabel, reviewText, reviewAuthorLabel, reviewAuthor, retingSelectLabel, retingSelect, reviewSubmit)
  addProductDIV.append(form)
}

function buyProduct(event, name) {
  modal.style.display = "block";
  // modal.width = 60%;
  while (addProductDIV.firstChild){
    addProductDIV.removeChild(addProductDIV.firstChild)
  }

  let iframe = document.createElement('iframe')
  iframe.setAttribute('style', 'width:0;height:0;border:0; border:none;')
  iframe.setAttribute('allow', 'autoplay')
  iframe.setAttribute('src', 'Cash Register Cha Ching-SoundBible.com-184076484.mp3')

  h1 = document.createElement('h1')
  h1.innerText = `You just bought \n ${name}!`

  addProductDIV.append(h1, iframe)
}

async function submitReview(event){
  event.preventDefault()

  await fetch(`http://localhost:3000/reviews/`, {
    method: 'POST',
    headers: {
      'content-type': 'application/json'
    },
    body: JSON.stringify({
      author: event.target['author'].value,
      text: event.target['review'].value,
      rating: event.target['rating'].value,
      product_id: event.target.id
    })
  })
  .then(r => r.json())
  .then(respond => {

    let productDiv = document.querySelector('#display-product')
    let reviewsUl = productDiv.querySelector('#reviews-list')

    let newReviewLi = document.createElement('li')
    let newReviewText = document.createElement('p')
    let newReviewAuthor = document.createElement('p')
    let deleteButton = document.createElement('button')

    newReviewText.innerText = respond.text
    newReviewAuthor.innerText = respond.author

    deleteButton.innerText = 'Delete'
    deleteButton.setAttribute('id', respond.id)
    deleteButton.setAttribute('data-id', event.target.id)
    deleteButton.setAttribute('class', 'btn btn-danger')
    deleteButton.addEventListener('click', event => {deleteReview(event)})

    newReviewLi.append(newReviewText, newReviewAuthor, deleteButton)
    reviewsUl.append(newReviewLi)
    productDiv.append(reviewsUl)
  })
   parsAverageRating(event.target.id)
}

async function deleteReview(event){
  await fetch(`http://localhost:3000/reviews/${event.target.id}`, {
    method: 'DELETE'
  })
  let button = document.getElementById(event.target.id)
  let pAverageRating = productDiv.querySelector('#average_rating')
  button.parentElement.remove()
  parsAverageRating(event.target.dataset.id)
}

function parsAverageRating(id){
  fetch(`http://localhost:3000/products/${id}`)
    .then(r => r.json())
    .then(resp => {
      let pAverageRating = productDiv.querySelector('#average_rating')
      if (resp.average_rating === null) {
        pAverageRating.innerText = `Average rating: ${0}`
      }
      else {
        pAverageRating.innerText = `Average rating: ${resp.average_rating}`
      }
    })
}

// ADDING AND CREATING NEW PRODUCTS
function addNewProduct(respond){
  newProductBTN.addEventListener("click", () => {

    addProductDIV.innerText = ""
    let newProductFORM = document.createElement("form")
    newProductFORM.id = "product-form"
    // name
    let nameLabel = document.createElement("label")
    nameLabel.innerText = "Name:"
    let nameInput = document.createElement("input")
    nameInput.name = "name"
    nameInput.type = "text"
    nameInput.placeholder = "Enter name..."
    // image
    let imageLabel = document.createElement("label")
    imageLabel.innerText = "Image:"
    let imageInput = document.createElement("input")
    imageInput.name = "image"
    imageInput.type = "text"
    imageInput.placeholder = "Enter image's url..."
    // description
    let descLabel = document.createElement("label")
    descLabel.innerText = "Description:"
    let descInput = document.createElement("input")
    descInput.name = "description"
    descInput.type = "text"
    descInput.placeholder = "Enter a description..."
    // origin
    let originLabel = document.createElement("label")
    originLabel.innerText = "Origin:"
    let originInput = document.createElement("input")
    originInput.name = "origin"
    originInput.type = "text"
    originInput.placeholder = "Enter origin..."
    // cost
    let costLabel = document.createElement("label")
    costLabel.innerText = "Cost:"
    let costInput = document.createElement("input")
    costInput.name = "cost"
    costInput.type = "number"
    costInput.placeholder = "Enter price..."
    // category
    let categoryLabel = document.createElement("label")
    categoryLabel.innerText = "Category:"
    let categorySelect = document.createElement("select")
    categorySelect.name = "selectCategory"

    respond.forEach((category) => {
      let categoryOption = document.createElement("option")
      categoryOption.innerText = category.name
      categoryOption.id = category.id
      categorySelect.append(categoryOption)
    })
    // submit
    let submitInput = document.createElement("input")
    submitInput.value = "ADD TO THE DEEP WEB"
    submitInput.setAttribute('class', 'btn btn-dark')
    submitInput.type = "submit"

    let breakLine1 = document.createElement("br")
    let breakLine2 = document.createElement("br")
    let breakLine3 = document.createElement("br")
    let breakLine4 = document.createElement("br")
    let breakLine5 = document.createElement("br")
    let breakLine6 = document.createElement("br")
    let breakLine7 = document.createElement("br")
    let breakLine8 = document.createElement("br")
    let breakLine9 = document.createElement("br")
    let breakLine10 = document.createElement("br")
    let breakLine11 = document.createElement("br")
    let breakLine12 = document.createElement("br")


    newProductFORM.append(nameLabel, breakLine1, nameInput, breakLine2, imageLabel, breakLine3, imageInput, breakLine4, descLabel, breakLine5, descInput, breakLine6, originLabel, breakLine7, originInput, breakLine8, costLabel, breakLine9, costInput, breakLine10, categoryLabel, breakLine11, categorySelect, breakLine12, submitInput)
    addProductDIV.append(newProductFORM)

    newProductFORM.addEventListener("submit", (e) => {
      e.preventDefault()
      fetch(`http://localhost:3000/products`, {
        method:'POST',
        headers: {
          'Content-type': 'application/json'
        },
        body: JSON.stringify({
          name: e.target.name.value,
          image: e.target.image.value,
          description: e.target.description.value,
          origin: e.target.origin.value,
          cost: e.target.cost.value,
          category_id: e.target.selectCategory.selectedIndex + 1
        })
      })
      .then(r => r.json())
      .then(response => {
          let event = {target: {dataset: {id: response.category_id}}}
          renderProductsList(event)

      })
      modal.style.display = "none"
    })
 })
}

// Get the modal
let modal = document.getElementById("myModal");
// Get the button that opens the modal
let btn = document.getElementById("new-product");
// Get the <span> element that closes the modal
let span = document.getElementsByClassName("close")[0];
// When the user clicks on the button, open the modal
// btn.onclick = function() {
//   modal.style.display = "block";
// }
btn.addEventListener('click', event => {
  modal.style.display = "block";
})
// When the user clicks on <span> (x), close the modal
// span.onclick = function() {
//   modal.style.display = "none";
// }
span.addEventListener('click', event => {
  modal.style.display = "none";
})
// When the user clicks anywhere outside of the modal, close it
// window.onclick = function(event) {
//   if (event.target == modal) {
//     modal.style.display = "none";
//   }
// }
window.addEventListener('click', event => {
  if (event.target == modal) {
    modal.style.display = "none";
  }
})
