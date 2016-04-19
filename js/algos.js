/*
RELEASE 0: FIND THE LONGEST WORD
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

/*
RELEASE 1: FIND A KEY-VALUE MATCH
write a function that takes two objects and checks to see
if the objects share at least one key-value pair.
example input: {name: "Steven", age: 54} and {name: "Tamir", age: 54}
example return value: true
if no pairs match the function should RETURN false.
keep in mind that the two objects may not even have any of the same keys.

note: algorithim assumes both input objects have 2 key-value pairs.

step 1: create new function 'toArray' that takes 2 objects and converts them into Arrays
step 2: create 2 empty arrays, assign one to 'firstArr'
and the other to 'secondArr'
step 3: for first object, iterate through each key-value pair
and store ONLY its values into 'firstArr'
step 4: for second object, iterate through each key-value pair
and store ONLY its values into 'secondArr'
step 5: create a nested function 'findMatch' that will compare results of 'toArray'
step 6: FOR length of 'firstArr' or 'secondArr' TIMES
      step 7: iterate through 'firstArr', adding each value into 'finalArr'
      step 8: iterate through 'secondArr' adding each value into 'finalArr'
step 9: IF any of 'firstArr' values match 'secondArr' values:
delete an item out of 'finalArr'
step 10: If the length of 'finalArr' is LESS than 4:
      there was a match, return TRUE
      ELSE there was no match, return FALSE
*/
var firstArr = [];
var secondArr = [];
function toArray(objOne, objTwo) {
  for (var x in objOne) {
    firstArr.push(objOne[x]);
  }
  for (var x in objTwo) {
    secondArr.push(objTwo[x]);
  }
  console.log(firstArr);
  console.log(secondArr);
}
var finalArr = [];
function detectMatch(x, y) {
  for (i = 0; i < x.length; i++) {
    finalArr.push(x[i]);
    finalArr.push(y[i]);
    if (x[i] == y[i]) {
      finalArr.pop();
    }

  if (finalArr.length < 4) {
    return true;
  } else {
    return false;
  }
}
}


var testOne = {name: "Tammy", age: 100};
var testTwo = {name: "Jack", age: 18};

toArray(testOne, testTwo);
detectMatch(toArray(testOne, testTwo));













// DRIVER CODE (RELEASE 0)
// findWord(['mint', 'gum', 'lollipop']);
// findWord(['pizza', 'chocolate', 'muffins']);
// DRIVER CODE (RELEASE 1)



// DRIVER CODE (RELEASE 2)
