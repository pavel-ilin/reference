
// Define all constants
const getUrl = 'http://localhost:3000/quotes?_embed=likes'
const postUrl = 'http://localhost:3000/quotes'
const likeUrl = 'http://localhost:3000/likes'
const selectUl = document.querySelector('#quote-list')
const selectForm = document.querySelector('#new-quote-form')


fetch(getUrl)
.then(r => r.json())
.then(resp => {
  resp.forEach((quote) => {
    let li = document.createElement('LI')
    let pLike = document.createElement('P')

    li.innerText = quote.quote
    pLike.innerText = `Likes: ${quote.likes.length}`
    selectUl.append(li, pLike)
  })

})



selectForm.addEventListener('submit', e => {
  e.preventDefault()

  let author = e.target.author.value
  let input = document.querySelector('#new-quote')
  input.name = "pavel"

  let newQuote = e.target.pavel.value

  fetch(getUrl, {
    method: 'POST',
    headers: {
      'Content-type':'application/json',
      'Accept':'application/json'
    },
    body: JSON.stringify({
      author: author,
      quote: newQuote,
      likes: '0'
    })
  })
  .then(r => r.json())
  .then(resp => {
    debugger
    let li = document.createElement('LI')
    let pLike = document.createElement('P')

    li.innerText = resp.quote
    pLike.innerText = `Likes: ${resp.likes.length}`

    selectUl.append(li, pLike)
  })
})



