// 7.1 Release 4
// Write a JavaScript function that
// takes a string as a parameter,
// and reverses the string.
//==============================================
// Declare function: 'reverse'
// that takes a word as a parameter.
// Define an empty variable to store
// the final word.
// Begin WHILE loop starting from last letter:
  // set counter equal to the length of the
  // input string, minus one.
  // Condition: WHILE counter is GREATER THAN
  // OR EQUAL TO 0.
  // Add the letter to the results variable.
  // Move down one letter.
// END loop
// PRINT results variable
//=============================================

function reverse(str) {
  finalResult = ""
  for (var i = str.length - 1; i >= 0; finalResult += str[i--]) {
  }
  console.log(finalResult);
}

//==============DRIVER CODE====================

testWord = reverse("JavaScript");
anotherTest = reverse("Reverse this string")
