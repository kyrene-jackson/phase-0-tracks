// 7.1 Release 4
// Write a JavaScript function that
// takes a string as a parameter,
// and reverses the string.
//===============================================
// Declare function: 'reverse'
// that takes a word as a parameter.
// Begin decrementing WHILE loop
  // set counter equal to the length of the
  // input string, minus one.
  // Define an empty variable to store
  // the final word.
  // Condition: WHILE counter is GREATER THAN
  // OR EQUAL TO 0.
  // Add the letter to the results variable.
  // Move down one letter.
// After loop is complete 
// Print final word.
//===============================================

var str = "Kyrene";

for (var i = str.length; i >= 0; i--) {
	console.log(str[i]);
}
