import React, { Component } from 'react';
import '../App.css';
import Nav from './Nav'
import HogsList from './HogsList'
import hogs from '../porkers_data';


class App extends Component {
  render() {
    return (
      <div className="App">
          < Nav />
          < HogsList hogs={hogs}/>
      </div>
    )
  }
}

export default App;
