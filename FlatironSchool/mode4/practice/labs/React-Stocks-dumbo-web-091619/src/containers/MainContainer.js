import React, { Component } from 'react';
import StockContainer from './StockContainer'
import PortfolioContainer from './PortfolioContainer'
import SearchBar from '../components/SearchBar'

class MainContainer extends Component {

  state = {
    stocks: [],
    portfolioStocks: [],
    newStocksArray: [],
    checked: false
  }


    componentDidMount(){
      fetch("http://localhost:3000/stocks")
      .then(r => r.json())
      .then(data => {
        this.setState({
          stocks: data,
        })
      })
    }

    handleClick = (stock) => {
      if(!this.state.portfolioStocks.includes(stock)){
      this.setState({
        portfolioStocks: [...this.state.portfolioStocks, stock]
    })
  }
    }

    removeStock = (stock) => {
      this.setState({
        portfolioStocks: [...this.state.portfolioStocks].filter(portStock => portStock !== stock)
      })
    }

    filterHandler = (filter) => {
      this.setState({
        newStocksArray: this.state.stocks.filter(stock => stock.type === filter)
      })
    }


    sortingHandler = (sorting) => {
      if (sorting === 'Alphabetically'){
        this.setState({
          newStocksArray: this.state.stocks.sort((a, b) => a.name.localeCompare(b.name)),
          checked: !this.state.checked
      })}
      else {
        this.setState({
          newStocksArray: this.state.stocks.sort((a, b) => b.price - a.price),
          checked: !this.state.checked
        })
      }
    }


  render() {
    return (
      <div>
        <SearchBar
          sortingHandler={this.sortingHandler}
          filterHandler={this.filterHandler}
          checked={this.state.checked}/>

          <div className="row">
            <div className="col-8">

              <StockContainer
                handleClick ={this.handleClick}
                stocks={this.state.newStocksArray.length === 0 ? this.state.stocks : this.state.newStocksArray}/>

            </div>
            <div className="col-4">

              <PortfolioContainer
                removeStock={this.removeStock}
                portfolioStocks={this.state.portfolioStocks}/>

            </div>
          </div>
      </div>
    );
  }

}

export default MainContainer;
