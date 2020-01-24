import React from 'react'


class HogTile extends React.Component {

  state = {
    deedShow: false
  }

  detailPigClick = () => {
    this.setState({
      deedShow: !this.state.deedShow
    })
  }

  renderDetails = () => {
    return(
      <div>
        <p>Specialty: {this.props.hog.specialty}</p>
        <p>Weight: {this.props.hog.weight}</p>
        <p>Greased: {this.props.hog.greased ? 'very greased' : 'not so greased'}</p>
        <p>Medal: {this.props.hog['highest medal achieved']}</p>
      </div>
    )
  }


  render() {
    return(
      <div onClick={this.detailPigClick} className='ui eight wide column'>
        <h3>{this.props.hog.name}</h3>
        {this.state.deedShow ? this.renderDetails() : null}
      </div>
    )
  }
}

export default HogTile