const twoSumBrute = (numbers, target) => {
    for(let i = 0; i < numbers.length; i++){
      for(let j = 0; j < numbers.length; j++){
        if (numbers[i] + numbers[j] === target) {
          return [i, j]
        } 
      }  
    }
};

const twoSumElegant = (numbers, target) => {
    const comp = {};
    for(let i=0; i < numbers.length; i++){
        if(comp[numbers[i]]){
            return [comp[numbers[i]] , i]
        }
        comp[target - numbers[i]] = i
    }
    return 'Not found'
};