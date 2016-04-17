// Create a reverse method that takes a string as a perameter.
// User inputs a string. Example: "hello".
// Assign user input to variable.
// Assign empty string to a variable. Example: a = " ";
// Determine the number of letters in input string.
// For each number in the count greater than 0,
// print a single letter from the string begining from the end.
// Add variable set to empty string to each letter.
// Once counter is greater than or equal to 0,
// Print the complete string.

function reverseString(x) {
  var y = ' ';
  for (var i = x.length - 1; i >= 0; i--)
    y += x[i];
    return y;
}

// Driver Code
// Call function and store result in a variable
// var finalResult = console.log(reverseString("hello"));
// Print variable if a condition is met
// if (1 == 1) {
// console.log(reverseString('hello'));
// }
