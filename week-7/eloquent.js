// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var addition = 16
addition = addition + 11
console.log(addition)

//Write a program that asks the user for their favorite food
var favoriteFood = prompt("What is your favorite food?")
console.log("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var hash = "#";
var counter = 0;
while (counter < 7){
	console.log(hash);
	hash = hash + "#";
	counter += 1;
}

// Functions

// Complete the `minimum` exercise.

function min(x, y){
console.log(Math.min(x, y));
};

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Will",
	age: 28,
	favoriteFoods: ["catfish", "burritos", "collards"],
	quark: "hates traffic",
};