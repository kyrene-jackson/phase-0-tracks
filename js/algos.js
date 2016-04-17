/*
write a function that takes an array of words or phrases,
and returns the longest word in the array.
example input: ['mint', 'gum', 'lollipop']
example output: 'lollipop'
step 1: create a new function that takes a parameter
step 2: create a 'longestWord' variable that holds the longest string
step 3: create a variable 'currentWord' that will hold the current string in the array
step 4: FOR the length of the input array TIMES:
     step 5: access first word by index and assign to 'currentWord'
     step 6: compare the length of 'currentWord' against the length of 'longestWord'
     step 7: IF 'currentWord' length is greater than 'longestWord' length
     step 8: assign word to 'longestWord'
step 9: Once last string is evaluated, print 'longestWord'
*/

// DRIVER CODE
var longestWord = null;
var currentWord = null;


function findWord(array) {
  for (var i = 0; i < array.length; i++) {
  longestWord = ""
  currentWord = array[i]
    if (currentWord.length > longestWord.length) {
      longestWord = currentWord
    }
  }
  console.log("The longest word is: " + longestWord + ".");
}

findWord(['mint', 'gum', 'lollipop']);
