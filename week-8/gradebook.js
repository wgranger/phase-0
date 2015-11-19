/*
Gradebook from Names and Scores
I worked on this challenge [with: Darius Atmar]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



// __________________________________________
// Write your code below.

var gradebook = {};

//add student name to gradebook

for (var x = 0; x < students.length; x++) {
  gradebook[students[x]] = {};
}

// Give each student property its own testScores property and assign to value of student

gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];

//Create a function that adds a student's score
gradebook.addScore = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

gradebook.getAverage = function(name){
  return average(gradebook[name]["testScores"]);
}

var average = function(array){
  var sum = 0
  for (var x = 0; x < array.length; x++)
    sum += array[x];
  return sum/(array.length);
}

// __________________________________________
// Refactored Solution


var average = function(array){
  var sum =array.reduce(function(previousValue, currentValue, currentIndex, array) {
    return previousValue + currentValue;
  });
  return sum / array.length;
}





// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?

I learned that you often need to explicitly state where a function should
be added into an object. In our case, we stated that getAverage should be 
a function that is added to the gradebook object. 

How did you iterate over nested arrays in JavaScript?

We used a "for" loop to iterate over nested arrays in JavaScript.
However, we had a bit of difficulty linking scores to the new testScores
property. I think we had the right idea when creating the loop, but we
just couldn't get our loop to access the right information in the array.
Our other loops worked without much difficulty.

Were there any new methods you were able to incorporate? 
If so, what were they and how did they work?

We used the built-in .reduce method with JavaScript. However, our 
"refactored" result looked pretty messy, and it's not clear that this 
is a cleaner way to write our solution. I think our initial solution is
a bit cleaner, but it's nice to know about the .reduce method. There might
also be a way we could refactor our .reduce method.

*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)