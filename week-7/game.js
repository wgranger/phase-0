 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: You are stuck in Mobile, AL and need to get
// back to Memphis, TN. Raise money by betting on baseball teams, or lose 
// your money and stay stuck in Mobile.
// Overall mission: Bet on baseball teams
// Goals: Raise $50 to purchase a bus ticket
// Characters: Player, Weather, Police
// Objects: Player (money, bet), Teams
// Functions: Bet (team, wage)

/* Pseudocode
 Log a description into the console of the game mission
 Declare a player object that has properties of cash as integer and 
 Declare a police object that has a bribe property
 Write a bet function that takes two arguments (team, and wage)
	set a variable "win" to represent a random number between 0-1
	IF conditionals to match each team
		IF win > number (set to team's win pct. record)
		player wins wage
		ELSE 
		player loses wage
	Run conditional for each team
	END function

	Check if police will raid betting house
	raid = random number between 0-1
	IF raid > .15
		subtract bribe from player cash
		Player loses if cash is depleted from by bribe
	Check if player fulfilled goal
	IF player.cash > 50, goal fulfilled
	ELSE IF player.cash <= 0, player loses
 END funciton
*/
/*
// Initial Code
console.log("You are stuck in Mobile, AL with $20 and need $50 to buy a ticket back to Memphis. Bet on baseball to buy a bus ticket!");

var player = {
	cash: 20,
	ticket: false,
}

var police = {
	raid: 0,
	bribe: 10
}

var bet =function(team, wage){
	win = Math.random();
	if(team ==='cardinals'){
		if (win > .3){
			player.cash += (wage* 1.5);
			result = "The Cardinals won!"
		} else {
			player.cash -= (wage* 3);
			result = "The Cardinals lost!"
		}
	}
	else if(team === 'cubs'){
		if(win>.6){
			player.cash += (wage* 2.5);
			result = "The Cubs won!"
		} else {
			player.cash -= (wage* 2);
			result = "The Cubs lost!"
		}
	}
	else if(team === 'braves'){
		if(win>.7){
			player.cash += (wage* 3);
			result = "The Braves won!"
		} else {
			player.cash -= (wage* 1.5);
			result = "The Braves lost!"
		}
	}
	else if(team === 'royals'){
		if(win>.4){
			player.cash += (wage* 2);
			result = "The Royals won!"
		} else {
			player.cash -= (wage* 2.5);
			result = "The Royals lost!"
		}
	}

	police.raid = Math.random();
	if (police.raid > .15){
		if (player.cash > police.bribe){
			console.log('You were caught by the police for illegal gambling! Pay ' + police.bribe.toString());
			player.cash -= police.bribe;
			police.bribe += 10;
		} else if (player.cash < police.bribe){
			console.log('You don\'t have enough cash to pay the bribe. You\'re stuck in Mobile');
		} 
	}

	if(player.cash >= 50){
	console.log("You bought a ticket home. You'll be in Memphis by morning.");
	}
	else if (player.cash > 0){
	console.log(result + "You need " + (50 - player.cash) + ' to get out of Mobile.');
}
	else if (player.cash <= 0){
	console.log("You lose. Get ready for your new life in South Alabama.")
	}
}
*/

// Refactored Code
var player = {
	cash: 20,
}

var police = {
	bribe: 10
}

var bet =function(team, wage){
	win = Math.random();
	if(team ==='cardinals'){
		if (win > .3){
			player.cash += (wage* 1.5);
			result = "The Cardinals won!"
		} else {
			player.cash -= (wage* 3);
			result = "The Cardinals lost!"
		}
	}
	else if(team === 'cubs'){
		if(win>.6){
			player.cash += (wage* 2.5);
			result = "The Cubs won!"
		} else {
			player.cash -= (wage* 2);
			result = "The Cubs lost!"
		}
	}
	else if(team === 'braves'){
		if(win>.7){
			player.cash += (wage* 3);
			result = "The Braves won!"
		} else {
			player.cash -= (wage* 1.5);
			result = "The Braves lost!"
		}
	}
	else if(team === 'royals'){
		if(win>.4){
			player.cash += (wage* 2);
			result = "The Royals won!"
		} else {
			player.cash -= (wage* 2.5);
			result = "The Royals lost!"
		}
	}

	raid = Math.random();
	if (raid > .15){
		if (player.cash > police.bribe){
			console.log('You were caught by the police for illegal gambling! Pay ' + police.bribe.toString());
			player.cash -= police.bribe;
			police.bribe += 10;
		} else if (player.cash < police.bribe){
			console.log('You don\'t have enough cash to pay the bribe. You\'re stuck in Mobile');
		} 
	}

	if(player.cash >= 50){
	console.log("You bought a ticket home. You'll be in Memphis by morning.");
	}
	else if (player.cash > 0){
	console.log(result + "You need " + (50 - player.cash) + ' to get out of Mobile.');
}
	else {
	console.log("You lose. Get ready for your new life in South Alabama.")
	}
}


// Reflection
/*
What was the most difficult part of this challenge?

The most difficult part of this challenge was finding out what game I was
going to make and then developing a game around that concept. I went through
a couple ideas because I wasn't quite sure how I would implement my original
plans. I even had to alter my code a bit because I felt somewhat restricted
by the terminal. Had I been using a webpage, I could ask for input from 
the user by using an alert box.

What did you learn about creating objects and functions that interact 
with one another?

I learned that objects should be kept outside functions if their properties
are to be updated and conditioned by functions. I played around a bit with
creating objects inside functions and removing redundant functions. For example,
each team was initially an object; however, I was able to put their 
properties into a function since I didn't necessarily need to track how
the teams change over time (for the puposes of this solution).

Did you learn about any new built-in methods you could use in your 
refactored solution? If so, what were they and how do they work?

I researched getting user input from terminal, but I was unable to find
many ways to get user feedback (text) without the use of a browser. I 
suppose this is why JavaScript is mainly considered to be a web language.
I used the math.random method quite often to cause a random event to occur
based on certain conditions.

How can you access and manipulate properties of objects?

There are several ways to manipulate properties. I was able to change conditions
and increase/decrease integer values from within a function. Although
the object was outside of a function, I was still able to manipulate these objects.
*/