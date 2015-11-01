# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode
=begin
# Input: An integer representing the number of sides on a die
# Output: A random integer representing 
# Steps:
IF sides is less than one, establish an ArgumentError
ELSE assign sides to an instance variable
set the sides definition to equal an instance variable
assign the roll method to a random number
=end

# 1. Initial Solution

class Die
  def initialize(sides)
  	if sides < 1
    	raise ArgumentError.new("Your dice must have at least one side.")
	else
	@side = sides
  end
end

  def sides
    @side
  end

  def roll
    rand(@side) + 1
  end
end


# 3. Refactored Solution
class Die
  def initialize(sides)
    raise ArgumentError.new("Your dice must have at least one side.") if sides < 1
	@side = sides
end

  def sides
    @side
  end

  def roll
    rand(@side) + 1
  end
end

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError is an exception that is nestled inside of our class method. 
In our case, we can only accept a die with at least one side, so if we are
given a die with less than one as the argument passed, then an error is returned
to the user.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I had never created a class in Ruby, so all of the work for this challenge
was new to me. I was initially a bit confused as to why we needed to have
a "sides" method if we were already creating the Die object with the 
initialization method, but I eventually understood that this is similar 
to asking for .length on a string when we need to know just a bit more
about a particular object.

What is a Ruby class?

A Ruby class is a category that a particular object will fall under. For 
example, we have the common class of an integer or string which have a 
number of methods that can be called upon them. Each class will have a number 
of superclasses that eventually lead to the object class. While we have
heard in Ruby that "every object is an object," this is just now coming to 
light when we think of how classes and superclasses interact.

Why would you use a Ruby class?

You would use a Ruby class if you would like to customize how objects 
respond to certain commands. We can save a great deal of memory in our 
programs if we assign class methods to a particular type of object rather 
than constantly rewriting methods. 

What is the difference between a local variable and an instance variable?

Local variables are only accessible within the methods they are created. 
We would be unable to access a local variable in an outside method. Instance
variables are a bit more accessible. We can access instance variables in 
other methods of the same class. 

Where can an instance variable be used?

An instance variable is accessible in any of that class's methods. It
does not have the same tight restrictions as a local variable.

=end
