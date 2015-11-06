# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: Either the number of "sides" of the die as an integer, or a 
# random side represented as a "string."
# Steps: 
# CLASS Die
# 	DEF an initialize method that takes an array as an argument
# 		IF an empty array is given
# 			RAISE an argument error
# 		ELSE assign a class variable to the array
# 	END initialize

# 	DEF a method "sides" that returns the number of arguments in an array
# 	END the "sides" method

# 	DEF a method "roll" 
# 		select and return a random element in the array
# 	END the method "roll"
# END the class Die

# Initial Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("You must provide text")
  	else
  		@sides = labels
  	end
  end

  def sides
  	p @sides.length
  end

  def roll
  	p @sides[rand(@sides.length) -1]
  end
end

# Refactored Solution

class Die
  def initialize(labels)
  	if labels == [] 
  		raise ArgumentError.new("You must provide text")
  	else
  		@sides = labels
  	end
  end

  def sides
  	@sides.length
  end

  def roll
  	@sides[rand(@sides.length) -1]
  end
end

# Reflection
=begin
	
What were the main differences between this die class and the last one 
you created in terms of implementation? Did you need to change much logic 
to get this to work?

The main difference between the two is that I am now working with strings
and have to think about the indexing nature of arrays to bring me a string
I'm looking for. Whereas before I was strictly concerned with integers, I
now have to think of how each string element in an array will respond to the
methods I pass.

What does this exercise teach you about making code that is easily 
changeable or modifiable? 

It's very easy to change your code slightly to return a different result.
This challenge was just about done when I checked on my original work, I
just needed to change a couple lines to get the output I was looking for.

What new methods did you learn when working on this challenge, if any?

I learned how to get a random element in an array. At first the syntax
for this was a bit confusing to me, but after reading through line 64
several times it began to make more sense. 

What concepts about classes were you able to solidify in this challenge?

Most of this challenge was pretty simple, but I was able to solidify
how to return a random element in an array. I also got some more practice
using class variables, so I feel like I have a better idea of how they work.

=end
