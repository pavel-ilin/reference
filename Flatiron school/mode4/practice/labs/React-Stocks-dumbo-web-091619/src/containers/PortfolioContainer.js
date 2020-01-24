import React, { Component } from 'react';
import Stock from '../components/Stock'

class PortfolioContainer extends Component {

  render() {
    const portfolio = this.props.portfolioStocks.map(stock => {
      return <Stock stock={stock}  removeStock={this.props.removeStock} key={stock.id}/>
    })
    return (
      <div>
        <h2>My Portfolio</h2>
          {
            portfolio
          }
      </div>
    );
  }

}

export default PortfolioContainer;
