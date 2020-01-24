console.log('%c HI', 'color: firebrick')
let breedUl = document.getElementById("dog-breeds")
let dogUl = document.getElementById("dog-image-container")
let selectBreed = document.getElementById('breed-dropdown')

fetch("https://dog.ceo/api/breeds/image/random/4")
.then(resp => resp.json())
.then(json => {
  console.log(json);
  json.message.forEach(url => {

    dogUl.innerHTML += `<img src= "${url}"/>`
  })
})

fetch('https://dog.ceo/api/breeds/list/all')
.then(resp => resp.json())
.then(json => {
  console.log(json);
  let breedArr = Object.keys(json.message)
breedArr.forEach(breed =>{
  breedUl.innerHTML += `<li>${breed}</li>`
})
})

breedUl.addEventListener('click', function(event){
  // debugger
  if (event.target.tagName === 'LI') {
    event.target.style.color = 'red'
  }
})


selectBreed.addEventListener('change', event => {
  // debugger

  fetch('https://dog.ceo/api/breeds/list/all')
  .then(r => r.json())
  .then(r => {
    // console.log(r);

    let breedArr = Object.keys(r.message)
    let fitleteredArr = breedArr.filter(breed => {
      return breed.startsWith(event.target.value)
})
        breedUl.innerHTML = ""
        fitleteredArr.forEach(breed => {
          let breedLi = document.createElement('Li')
          breedLi.innerText = breed
          breedUl.append(breedLi)
        // breedUl.innerHTML += `<li>${breed}</li>`

      })
  })
})

