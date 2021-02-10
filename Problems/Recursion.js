const something = (i) => {
    if (i >= 5){
      console.log(i)
    return something(i - 1)
    }
    else (
      console.log(i)
    )
  }