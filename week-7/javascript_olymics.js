 // JavaScript Olympics

// I paired [with: Alan Alcesto] on this challenge.

// This challenge took me [1] hour.



// Bulk Up

var sarah = { name: 'Sarah Hughes', event: 'Women\'s Singles'};
var usain = { name: 'Usain Bolt', event: 'Running'};

var athletes = [sarah, usain]

var win = function() {
  for(var i = 0; i < athletes.length; i++){
  console.log(athletes[i].win = athletes[i].name + " won the " + athletes[i].event + ".")
  };
};

// sarah.win
// console.log(athletes[0].name)
console.log(win(athletes))
// Jumble your words

var str = "I love coding!";

function reverse(str) {
  console.log(str.split('').reverse().join(''))
}
reverse(str)

// 2,4,6,8
var array = [1, 2, 3, 4, 5, 6]

function evenNumbers(array) {
  var newArray = [];
  for(var i =0; i < array.length; i++){
    if (i % 2 === 0) {
      newArray.push(i)
      };
  };
  console.log(newArray)
};
console.log(evenNumbers(array))

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?

Using the constructor function was something new for me. I had seen some
instances of it while reading about JavaScript, but this was my first time
to create and manipulate an object. I also became more comfortable iterating
over objects in JavaScript.

What are constructor functions?

A constructor function can be created using the "new" keyword that can
then assign that function to a variable. When a new object of that function 
is constructed, it inherits all the properties of the constructor function.
What is interesting here is that if properties of the constructor funciton
are changed, those changes will also be made to objects of that function.
We can always override these properties on individual instances of an object.
When creating new objects, we can also pass in parameters that will then
be set to certain properties of that constructor prototype.

How are constructors different from Ruby classes (in your research)?

Both languages simply have different ways of creating objects. While Ruby
relies on classes to create new objects, in JavaScript objects can be 
created through the literal object or constructor functions. In Ruby, object
properties are defined when a class is initialized, while the JavaScript
prototype makes a reference to itself using the (this.) syntax.

*/