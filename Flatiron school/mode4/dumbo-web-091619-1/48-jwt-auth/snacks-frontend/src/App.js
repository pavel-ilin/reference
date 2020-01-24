import React from 'react';
import './App.css';
import LogIn from './LogIn'
import SnackDashboard from './SnackDashboard'


class App extends React.Component {

  state = {
    token: null,
    loggedInUserId: null,
  }

  componentDidMount(){
    this.setState({
      token: localStorage.token,
      loggedInUserId: localStorage.userId
    })
  }

  setToken = ({ token, user_id })  =>{

    localStorage.token = token
    localStorage.userId = user_id

    this.setState({
      token: token,
      loggedInUserId: user_id
    })
  }

  logOutClick = () => {
    localStorage.userId = undefined
    localStorage.token = undefined

    this.setState({
      loggedInUserId: null,
      token: null
    })
  }

  render(){
    return (<main>

                <header>
                { !!this.state.token
                ? <button onClick={ this.logOutClick }>Log out</button>
                : ""
                }</header>

      {
        !!this.state.token
          ? <SnackDashboard token={ this.state.token }
                            loggedInUserId={ this.state.loggedInUserId } />
          :
          <div>
          <LogIn setToken={ this.setToken } />
          </div>
      }
    </main>);
  }
}

export default App;
