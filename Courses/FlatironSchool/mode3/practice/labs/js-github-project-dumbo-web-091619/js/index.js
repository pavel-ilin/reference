let stableUrl = 'https://api.github.com/users?q='
let searchSubmit = document.querySelector('#github-form')
let userList = document.querySelector('#user-list')
let userRepos = document.querySelector('#repos-list')


searchSubmit.addEventListener('submit', (e) => {
  e.preventDefault()
  // debugger
  fetch(stableUrl + e.target.search.value)
  .then(r => r.json())
  .then(rObject => {
    rObject.forEach((user) => {
      renderUsersPage(user)
    })
  })

})


function renderUsersPage(user){
  // Create container for user
  let userDiv = document.createElement("div")

  // Creat element for user
  let userUrl = document.createElement('a')
  let userName = document.createElement("p")
  let userImg = document.createElement("img")

  userUrl.setAttribute('class', 'user-link')
  userUrl.setAttribute('id', user.id)
  userUrl.setAttribute('name', user.login)
  userImg.setAttribute('src', user.avatar_url)
  // userUrl.setAttribute('href', user.html_url)
  userUrl.innerText = user.login

  userName.append(userUrl)
  userDiv.append(userName, userImg)
  userList.append(userDiv)
  // searchSubmit.remove()

  let userReposUrl = document.querySelector('.user-link')
  userReposUrl.addEventListener('click', (e) => {
    renderUserReposPage(e)
  })
}


function renderUserReposPage(user){



  fetch(`https://api.github.com/users/${user.target.id}/repos`)
  .then(r => r.json())
  .then(rObject => {
    rObject.forEach((repo) => {
      let repoUrl = document.createElement('a')
      let repoName = document.createElement("p")

      repoUrl.setAttribute('href', repo.html_url)
      repoUrl.innerText = repo.full_name

      repoName.append(repoUrl)
      userRepos.append(repoName)
    })
  })

  userList.remove()

  // let ownerName = document.createElement('b')
  // ownerName.innerText = `Owner of the repos: ${user.target.name}`
  // userList.append(ownerName)
}

// debugger