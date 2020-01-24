document.addEventListener('DOMContentLoaded', () => {
  const createTaskForm = document.querySelector('#create-task-form')
  createTaskForm.addEventListener('submit', taskFormSubmitted)

  function taskFormSubmitted (event) {
    event.preventDefault()
    const newTaskDesc = event.target['new-task-description'].value
    appendNewTask(newTaskDesc)
  }

  function appendNewTask (task) {
    const taskList = document.querySelector('#tasks')
    const innerElement = createLi(task)
    taskList.append(innerElement)
  }

  function createLi (innerText) {
    const liAppend = document.createElement('p')
    liAppend.innerText = innerText
    return liAppend
  }

})
