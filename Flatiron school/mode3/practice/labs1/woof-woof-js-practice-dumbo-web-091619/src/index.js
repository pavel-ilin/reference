const dogBar = document.querySelector("#dog-bar")
const dogInfo = document.querySelector("#dog-info")


fetch("http://localhost:3000/pups")
.then(r => r.json())
.then(response => {
    response.forEach(dog => {
        getAllDogs(dog)
    })
})

function getAllDogs(dog) {
    const span = document.createElement("span")
    span.id = dog.id
    span.innerText = dog.name
    dogBar.append(span)

// When a user clicks on a pup's `span` in the dog bar, that pup's info(`image`, `name`, and`isGoodDog` status) should show up in the`div` with the id of`"dog-info"`.
// When you have the pup's information, the dog info `div` should have the following children:
//     - an`img` tag with the pup's image url
//         - an`h2` with the pup's name
//             - a`button` that says`"Good Dog!"` or`"Bad Dog!"` based on whether`isGoodDog` is true or false.
//                 Ex:
// ```
//   <img src=dog_image_url>
//   <h2>Mr. Bonkers</h2>
//   <button>Good Dog!</button>
//  ```

    span.addEventListener("click", (event) => {

        // const h2 = document.createElement("h2")
        // h2.innerText = dog.name
        // dogInfo.append(h2)

        dogInfo.innerHTML = ""

        dogInfo.innerHTML = `<img src=${dog.image}>
        <h2>${dog.name}</h2>`

        let dogButton = document.createElement("button")
        dogButton.id = dog.id

        if (dog.isGooddog){
            dogButton.innerText = "Good Dog!"
        } else {
            dogButton.innerText = "Bad Dog!"
        }

        dogInfo.append(dogButton)

        // When a user clicks the Good Dog / Bad Dog button, two things should happen:
        // - The button's text should change from Good to Bad or Bad to Good
        //     - The corresponding pup object in the database should be updated to reflect the new isGoodDog value
        //         - Please note, you can update a dog by making a PATCH request to`/pups/:id`

        dogButton.addEventListener("click", (event) => {

            dog.isGooddog = !dog.isGooddog

            fetch(`http://localhost:3000/pups/${event.target.id}`, {
                method: "PATCH",
                headers: {
                    "Content-Type": "application/json",
                    "Accept": "application/json"
                },
                body: JSON.stringify({
                    isGooddog: dog.isGooddog
                })
            })
            .then(r => r.json())
            .then(response => {
                if (response.isGooddog) {
                    dogButton.innerText = "Good Dog!"
                } else {
                    dogButton.innerText = "Bad Dog!"
                }
            })
        })
    })
}
