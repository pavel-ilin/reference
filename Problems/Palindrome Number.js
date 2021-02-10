// Determine whether an integer is a palindrome. 
// An integer is a palindrome when it reads the same backward as forward.

const isPalindrome = (x) => {
    let y = '';
    x = x.toString()
    
    for (let i = x.length - 1; i >= 0; i--) { 
        y += x[i];
    }
        
    if (x === y) return true
    else return false
};
