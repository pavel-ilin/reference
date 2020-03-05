let mosterContainer = document.querySelector('#monster-container')
let createMonster = document.getElementById('form')
fetch('http://localhost:3000/monsters/?_limit=10&_page=3')
.then(r => r.json())
.then(monsters => {
  monsters.forEach((monster) => {
    let pName = document.createElement("p")
    let pAge = document.createElement('p')
    let pDescription = document.createElement('p')

    pName.innerText = monster.name
    pAge.innerText = monster.age
    pDescription.innerText = monster.description


    mosterContainer.append(pName, pAge, pDescription)

  })
})

createMonster.addEventListener('submit', e => {
  e.preventDefault()
  // debugger
    let monsterName  =  e.target.name.value
    let monsterAge  = e.target.age.value
    let monsterdescription =   e.target.description.value

        fetch('http://localhost:3000/monsters', {
          method: "POST",
          headers: {
            "Content-type":"application/json",
            "Accept":"application/json"

          },
          body: JSON.stringify({
            name: monsterName,
            age: monsterAge,
            description: monsterdescription
          })
        })
        .then(r => r.json())
        .then(monster => {
          let pName = document.createElement("p")
          let pAge = document.createElement('p')
          let pDescription = document.createElement('p')

          pName.innerText = monster.name
          pAge.innerText = monster.age
          pDescription.innerText = monster.description


          mosterContainer.prepend(pName, pAge, pDescription)

        })


})




// debugger