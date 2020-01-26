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

// Counting CardsPassed
// In the casino game Blackjack, a player can gain an advantage over the house by keeping track of the relative number of high and low cards remaining in the deck. This is called Card Counting.
// Having more high cards remaining in the deck favors the player. Each card is assigned a value according to the table below. When the count is positive, the player should bet high. When the count is zero or negative, the player should bet low.

function cc(card) {
  // Only change code below this line
  switch (card) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      count++;
      break;
    case 10:
    case "J":
    case "Q":
    case "K":
    case "A":
      count--;
      break;
  }
  if (count > 0) {
    return count + " Bet";
  } else {
    return count + " Hold";
  }
  // Only change code above this line
}
cc(2); cc(3); cc(7); cc('K'); cc('A');

