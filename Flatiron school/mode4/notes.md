# Install React globally in your environment:
```
sudo npm install -g create-react-app
```

# Create react app
```
create-react-app app_name
```

# Start server
```
cd app_name
npm start
```


# JSX syntax

```javascript
<App />
```

# State

```javascript
state = {
  key: 0,
  key1: 1
}
```

# event listener

```javascript
likeClick(event) {
  //something
  console.log(event)
}

<button onClick={this.likeClick}>
  {this.state.key}
</button>
```

# Binding with arrow function

```javascript
likeClick = (event) => {
  //something
  console.log(event)
}
```

# setState()

```javascript
likeClick = (event) => {
  this.setState({
    facepalms: this.state.facepalms + 1
  })
  console.log(this.state.facepalms)
}
```

# From children to parent - pass a function from parent as a props from parent to children which update state of parent

Create: spread the old elements into a new array and stick the new one at the end (or the beginning, your choice)
Update: map through the elements. In the callback: if the ID of the current element matches the ID of the thing you want to update, return a new object literal, spread the old object in, and add keys after the spread for the updated properties, else return the existing object.
Delete: filter, testing each object to see if the ID doesn’t equal the ID of the one you want to delete

# Redux


