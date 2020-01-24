document.addEventListener('DOMContentLoaded', () => {
  const form = document.getElementById('joke-form')
  const jokeList = document.getElementById('joke-list')
  // const username = document.getElementById('name-input')
  let joke;

  function fetchJoke(username){
    fetch('https://icanhazdadjoke.com/', {
      headers: {
        "Accept": "application/json"
      }
    })
    .then(res => res.json())
    .then(jokeData => {
      joke = jokeData.joke

      const newJokeLi = document.createElement('li')

      newJokeLi.innerHTML =
      `<span class="username">${username} says:</span> ${joke}`
      jokeList.appendChild(newJokeLi)
    })
  }

  form.addEventListener('submit', (event) => {
    event.preventDefault()
    const username = document.getElementById('name-input').value
    // debugger
    if(username === "") return;
    fetchJoke(username)
  })
})
