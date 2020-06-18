function PalindromicSubstring(str) { 

    const palindrom = (s) => {
      let r = s.split('').reverse().join('')
      return s === r
    }
  
    let maxLenght = 0
    let result = ''
  
    for(let i=0; i < str.length; i++) {
      let subString = str.substr(i, str.length);
        for (let a = subString.length; a >= 0; a--){
        let subSubString = subString.substr(0, a)
        
        if (subSubString.lehgth <= 1)
        continue
        if (palindrom(subSubString)){
          if(subSubString.length > maxLenght){
              maxLenght = subSubString.length
              result = subSubString
            }
        }
      }
  }
    return result; 
  }  