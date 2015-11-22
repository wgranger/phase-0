// Tally Votes in JavaScript Pairing Challenge.

// Will Granger and Nil Thacker worked on this challenge.
// This challenge took us [1.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// input: none
// output: none

// loop through each object in votes
//   inside each "named" object (the person voting), loop through each object:     increment the total votes for each president, vp, etc candidate. 
//     if the candidate's name isn't in the voteCount object:
//       create a key:value pair for that candidate
// loop through each position title in voteCount
//   set the first name's vote count to the highest and store the name in officers[position]
//   if the next one is higher, set it to the highest and store the name in officers[position]
//  

// __________________________________________
// Initial Solution

// count all votes
// for (var eachVoter in votes) {
//   if (votes.hasOwnProperty(eachVoter)) {
//      var obj = votes[eachVoter];
//       for (var position in obj) {
//         var nameOfCandidate = votes[eachVoter][position];
//         if (voteCount[position].hasOwnProperty(nameOfCandidate)) {
//           voteCount[position][nameOfCandidate] += 1;
//         }
//         else {
//           voteCount[position][nameOfCandidate] = 1;
//         }
//      }
//   }
// }

// // determine who won
// for (var eachPosition in voteCount) {
//   if (voteCount.hasOwnProperty(eachPosition)) {
//     var votesForPosition = voteCount[eachPosition];
//     var highest = -1;
//     for (var votesForPerson in votesForPosition) {
//       if (voteCount[eachPosition][votesForPerson] > highest) {
//         officers[eachPosition] = votesForPerson;
//         highest = voteCount[eachPosition][votesForPerson];
//       }
//     }
//   }
// }

// console.log(officers);

// __________________________________________
// Refactored Solution

// count all votes
for (var eachVoter in votes) {
  if (votes.hasOwnProperty(eachVoter)) {
      for (var position in votes[eachVoter]) {
        var nameOfCandidate = votes[eachVoter][position];
        if (voteCount[position].hasOwnProperty(nameOfCandidate)) {
          voteCount[position][nameOfCandidate] += 1;
        }
        else {
          voteCount[position][nameOfCandidate] = 1;
        }
     }
  }
}

// determine who won
for (var position in voteCount) {
  if (voteCount.hasOwnProperty(position)) {
    var votesForPosition = voteCount[position];
    var highest = -1;
    for (var votesForPerson in votesForPosition) {
      if (voteCount[position].hasOwnProperty(votesForPerson)) {
        if (voteCount[position][votesForPerson] > highest) {
          officers[position] = votesForPerson;
          highest = voteCount[position][votesForPerson];
        }
      }
    }
  }
}

console.log(officers);

// __________________________________________
// Reflection
/* What did you learn about iterating over nested objects in JavaScript?

  This exercise looks famililar to another one we did a couple weeks ago. 
Once we got far enough into our nest, it was easy to set up the iterations
how we normalls would with a typical array. This was the first time I used
a for...in loop, but it definitely has some benefits in making the code
shorter and more logical.

Were you able to find useful methods to help you with this?
  
  This was the first time I had used the .hasOwnProperty method. In our case,
  we didn't really need it because we knew how many nested items we were
  working with, but I can see the benefits of using this method if a
  programmer is unsure how many elements are containeed within an array.

What concepts were solidified in the process of working through this challenge?

  I became more comfortable with when it is necessary to create a variable to
  hold certain information in JavaScript. We had to be very careful with
  the way we named items in our array (With the for...in method). It was
  easy to get lost and forget what each item was referring to in the object.


+/ __________________________________________
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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)