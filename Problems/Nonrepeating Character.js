function NonrepeatingCharacter(str) { 
    for (let i = 0; i < str.length; i++){
      let a = str.charAt(i)
      if (str.indexOf(a) === i && str.indexOf(a, i + 1) === -1){
        return a
      }
    }
    return str; 
  }