import React from 'react'
import HogTile from './HogTile'

function compare (a, b) {
  if (a.name < b.name) {
    return -1
  }
  if (a.name > b.name) {
  return 1
}
  else {
    return 0
  }
}


class HogsList extends React.Component {

  state = {
    sorted: false
  }

  handleClick = () => {
    this.setState({
      sorted: !this.state.sorted
    })
  }

  render() {
    const originalArray = [...this.props.hogs]

    const newArray = originalArray.map(hog => {
      return (<HogTile key={hog.name} hog={hog}/>)
    })

    const sortetArray = originalArray.sort( compare )
    const newSortedArray = sortetArray.map(hog => {
      return(<HogTile key={hog.name} hog={hog}/>)
    })

    return(
      <div className='ui grid container'>
          <button onClick={this.handleClick}>Sort</button>
          {!this.state.sorted ? newArray : newSortedArray}
      </div>
    )
  }
}


export default HogsList

