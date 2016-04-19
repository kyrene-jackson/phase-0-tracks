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

step 1: create new function that takes two objects as parameters
step 2: create empty array to store values of both objects
step 3: iterate through key-value pairs of each object
step 4: store ONLY values into array
step 5: split value sets into two individual arrays
step 6: assign new variable to each array
step 7: iterate through both arrays, comparing each value
step 8: IF a value from both arrays are the same DATA type and VALUE
      step 9: retrn true
      step 10: ELSE return false
*/

function findMatch(objOne, objTwo) {
	var storeVal = [];
	for (var key in objOne) {
  storeVal.push((objOne[key]));
}
for (var key in objTwo) {
  storeVal.push((objTwo[key]));
}
var setOne = storeVal.slice(0, 2);
var setTwo = storeVal.slice(2, 4);
for (var i = 0; i < setOne.length; i++) {
	if (setOne[i] === setTwo[i]) {
		return true;
	} else {
		return false;
	}
}
}

/*
RELEASE 2: GENERATE RANDOM TEST DATA
Write a function that takes an integer for length,
builds and returns an array of strings of the given length.
example input: 3
example output: ["asd", "bcwqd", "jkfnnnn"]
The words should be of randomly varying length,
with a minimum of 1 letter and a maximum of 10 letters.

step 1: create new function that takes one integer as a parameter
step 2: create new array with a length based off of input
step 3: store the alphabet into a new variable
step 4: split the alphabet into individual letters (array)
step 5: create random number generator with max 10 and min 1
step 6: iterate through alphabet array, collecting letters equal to random number
step 7: join individual letters into a strings
step 8: store into array
step 9: continue until array length is equal to input number


note: Release not yet completed :(

*/
// function randomData(number) {
// 	finalArr = new Array(number);
// 	var alphabet = "abcdefghijklmnopqrstuvwxzy";
// 	var letters = alphabet.split('');
// 	var newWord = " ";
// 	for (var i = 0; i < number; i++) {
// 		var strLength = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
// 		newWord = letters[i]
// 		finalWord = letters.toString("");
// 		finalArr.push(newWord);
// 		console.log(finalArr);
// 	}
// }


// DRIVER CODE (RELEASE 0)
// findWord(['mint', 'gum', 'lollipop']);
// findWord(['pizza', 'chocolate', 'muffins']);
//
// DRIVER CODE (RELEASE 1)
// var firstObj = {name: 'Kyrene', age: 21};
// var secondObj = {name: 'Kyrene', age: 10};
// console.log(findMatch(firstObj, secondObj));
// var firstObj = {name: 'Kyrene', age: 21};
// var secondObj = {name: 'Max', age: 10};
// console.log(findMatch(firstObj, secondObj));
//
// DRIVER CODE (RELEASE 2)
// randomData(5)
