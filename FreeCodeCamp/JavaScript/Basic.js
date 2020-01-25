// Appending Variables to Strings

var someAdjective = 'test';
var myStr = "Learning to code is ";
myStr += someAdjective


// Use Bracket Notation to Find the Nth Character in a String
var lastName = "Lovelace";
var thirdLetterOfLastName = lastName[2];

// Use Bracket Notation to Find the Last Character in a String
var lastName = "Lovelace";
var lastLetterOfLastName = lastName[lastName.length - 1];

// Use Bracket Notation to Find the Nth-to-Last Character in a String
var lastName = "Lovelace";
var secondToLastLetterOfLastName = lastName[lastName.length - 2];

// Selecting from Many Options with Switch Statements
function caseInSwitch(val) {
  var answer = "";
  switch(val){
    case 1:
    answer = 'alpha';
    break;

    case 2:
    answer = 'beta'
    break;

    case 3:
    answer = 'gamma'
    break;

    case 4:
    answer = 'delta'
    break;

    default:
    answer = 'stuff'
    break
  }
  return answer;
}

// Returning Boolean Values from Functions

function isLess(a, b) {
  return a < b
}


