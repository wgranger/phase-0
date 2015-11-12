// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Becky Lehmann.

// Pseudocode

//INPUT: Integer
//OUTPUT: Integer as a comma-separated String
/*
STEPS TO SOLVE:
- Create a function called separateComma, which takes an Integer as an argument
- Convert Integer into String
- Place String into collection data structure as individual characters
- Reverse array
- Set a counter, WHILE counter is less than the length of the data structure, place commas between every three characters

*/

// Initial Solution

// function separateComma(number) {
//   var string = number.toString();
//   var array = string.split("").reverse();
//   for(var index = 3; index<array.length; index += 4 )
//     array.splice(index, 0, ",");
//   var final = array.reverse().join('');
//   console.log(final);
// };

// separateComma(2345)

// Refactored Solution

function separateComma(number) {
  var array = number.toString().split("").reverse();
  for(var index = 3; index<array.length; index += 4 )
    array.splice(index, 0, ",");
  console.log(array = array.reverse().join(''));
};

separateComma(2345)
// Your Own Tests (OPTIONAL)

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? 
Did you approach the problem differently?

It was a little easier to do the problem a second time because we were 
familiar with typical programming methods to arrive at a solution. The only
difference was that the syntax was completely different for JavaScript.

What did you learn about iterating over arrays in JavaScript?

I prefer the way iterations work in JavaScript, especially since your 
conditions are recorded all on one line (according to the "for" loop). It's
much easier to read the code when you starting, finishing, and increments
are all in one statement.

What was different about solving this problem in JavaScript?

I found solving this problem was much easier in JavaScript, but perhaps this
is because we had already done the same problem in Ruby. We also noticed that 
the method calls we used in this program were non-destructive, so we always
had to store our results in another (or the same) variable to ensure our
changes were recorded.

What built-in methods did you find to incorporate in your refactored solution?

We used the splice and reverse methods to manipulate our array. However, 
".join" is a new method that wasn't present in Ruby (by name), so learning
this method was beneficial to solving this problem. It's amazing how much 
overlap there is between the two programs.
*/


