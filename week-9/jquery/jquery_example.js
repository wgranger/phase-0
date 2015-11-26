// U3.W9:JQuery


// I worked on this challenge with William G..
// This challenge took me 1.5 hours.

$(document).ready(function(){

//RELEASE 3:
  //Add code here to select elements of the DOM
bodyElement = $('body').css({'background-color': 'pink'})

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
helloElement =$('.hello').css({'color':'blue', 'border': '10px solid black', 'visibility':'visible'})

//RELEASE 5: Event Listener
  // Add the code for the event listener here
	$('img').on('mouseover', function(){
    $(this).attr('src', 'fox.png');
	})
    $('img').on('mouseleave', function(){
    $(this).attr('src', 'dbc_logo.png');	
     })

//RELEASE 6: Experiment on your own
	$('img').click(function(){
	$(this).css({borderColor:'#f44d5e', borderStyle: 'solid'}).animate({
		borderWidth: 10,
		width: '30em'
		
	}) 	
	})

/*
What is jQuery?

JQuery is a way to make a webpage more responsive to the user. JQuery is also
another way to style some components of a webpage using CSS and other styling
elements. With jQuery, we can make elements of a webpage change depending on
how the user interacts with the page.

What does jQuery do for you?

JQuery makes webpages look more professional and compelling. I can make
buttons change based on mouse clicks and roll overs. I think webpages are 
at a point now where a user should understand some aspects of jQuery
styling to keep a webpage competitive and attractive as other pages are.

What did you learn about the DOM while working on this challenge?

I learned that you can name some elements in jQuery and view their 
properties using the DOM. I didn't really use the DOM too much, aside from 
inspecting some elements in the document, for which there were few.

*/
})  // end of the document.ready function: do not remove or write DOM manipulation below this.