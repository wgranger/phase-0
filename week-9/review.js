/*
9.2.1 JavaScript Grocery List

I worked on this challenge by myself.

========== USER STORIES ===============
Add an Item ===> As a user, I want to add a new item and quantity to my 
grocery list so the list will contain the new item.

Remove an Item ===> As a user, I want to remove an item from the list so
that my grocery list will no longer contain that item.

Update Quantities ===> As a user, I want to change the quantity of an 
existing item to a different amount.

Print the List ===> As a user, I want to view the quantity of each item on
my grocery list.

========== PSEUDOCODE =============
Input: item name and item value
Output: Updated groceryList object

CREATE an empty groveryList object

CREATE a function addItem that takes a string and integer as an argument
	IF string hasOwnProperty, add integer to property value
	otherwise, create property and add value in object

CREATE a function removeItem that takes a string as an argument
	DELETE property in object

CREATE a function updateList that takes a string and integer as an argument
	Change the string property to the integer argument passed

CREATE a function printList that takes an object as an argument
	FOR each property in groceryList
	console.log the property and value

========= INITIAL SOLUTION ===========
*/
/*
var groceryList = {};

function addItem (item, amount) {
	if (groceryList.hasOwnProperty(item)){
		groceryList[item] += amount
	}
		else {
			groceryList[item] = amount
		}
	}

function removeItem (item) {
	delete groceryList[item]
}

function updateList (item, amount) {
	groceryList[item] = amount
}

function printList () {
	for (var item in groceryList) {
		console.log("You need to purchase " + groceryList[item] + " " + item)
	}
}
*/
//========== REFACTORED SOLUTION ==============

var groceryList = {};

function addItem (item, amount) {
	if (groceryList[item]) {groceryList[item] += amount}
		else {groceryList[item] = amount}
	}

function removeItem (item) {
	delete groceryList[item]
}

function updateList (item, amount) {
	groceryList[item] = amount
}

function printList () {
	for (var item in groceryList) {
		console.log("You need to purchase " + groceryList[item] + " " + item)
	}
}

//=========== REFLECTION =================
/*
What concepts did you solidify in working on this challenge? 
(reviewing the passing of information, objects, constructors, etc.)

I was surprised how easy it was to find a solution with such few lines. 
I guess this challenge did happen in week 2, so it was a fairly simple
task. I am starting to understand the difference between dot and bracket
notation. In this exercise, I decided to use bracket notation because I 
feel more confident with the flexibility of bracket notation to access 
properties.

What was the most difficult part of this challenge?

The most difficult part was just reminding me of a couple syntax issues
in writing JavaScript. I Was a bit surprised that everything worked out
alright the first time I tested it.

Did an array or object make more sense to use and why?

An object made more sense considering the way I was manipulating values
so often. I was also able to use the hasOwnProperty method with objects,
so that seemed helpful in determining if a property already existed or not.

*/