// Declare 2 seperate arrays:
// 1. Array of four colors
// 2. Array of four names that you might give a horse
// Write additional code that adds another color to the colors array and another horse name to the horses array
// Add code that will use your two arrays to create an object.
// The keys of your object should be horse names, and the values should be colors.
// Should work as long as the two arrays are the same length.

var horseColors = ["Burgundy", "Royal Blue", "Fuchsia", "Indigo"];
var horseNames = ["Poncho", "Toby", "Chip", "Chester"];

horseColors.push("Crimson");
horseNames.push("Milo");


var horse = {};

function createHorse() {
  if (horseColors.length == horseNames.length) {
    for (var i = 0; i < horseColors.length; i++) {
      horse[horseNames[i]] = horseColors[i];
    }
  }
}

createHorse();
console.log(horse);

// write a constructor function for a car. Give it a few different properties of various data types
// including at least one function.
// demonstrate that your function works by creating a few cars with it.
console.log("------------------------")

function Car(color, maxMPH, isBrandNew) {
	console.log("Our car:", this);
	this.color = color;
	this.maxMPH = maxMPH;
  this.isBrandNew = isBrandNew;
	this.honk = function() {console.log("BEEP BEEP!"); };

	console.log("CAR INITIALIZATION COMPLETE");

}

console.log("Lets buy a new car...");
var firstCar = new Car("Black", 199, true);
console.log(firstCar);
console.log("Lets test out the horn..");
firstCar.honk();

console.log("Lets buy a used car...");
secondCar = new Car("Red", 210, false);
console.log(secondCar);
console.log("Lets test out the horn..");
secondCar.honk();
