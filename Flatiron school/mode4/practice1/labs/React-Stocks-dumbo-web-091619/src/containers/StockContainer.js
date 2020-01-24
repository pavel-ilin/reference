import React, { Component } from 'react';
import Stock from '../components/Stock'

class StockContainer extends Component {

  render() {
  let stocks =  this.props.stocks.map(stock => {
      return <Stock stock={stock}  handleClick={this.props.handleClick} key={stock.id}/>
    })
    return (
      <div>
        <h2>Stocks</h2>
        { stocks
        }
      </div>
    );
  }

}

export default StockContainer;
