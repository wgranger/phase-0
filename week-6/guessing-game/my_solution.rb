# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: An integer passed as an argument to GuessingGame
# Output: A "high" or "low" symbol that also returns a true or false 
# string if the number has or has not been guessed
# Steps:
=begin
	
CREATE the GuessingGame class
	DEF initialize method that takes an integer as an argument
		Assign the @number instance variable to the integer
	END Initialize

	DEF Guess method that takes an integer as an argument
		IF integer is less than number
			@guess variable = low symbol
		ELSIF integer is more than number
			@guess variable = high symbol
		ELSIF answer equals @guess
			@guess = correct symbol
		END IF statement
	END Guess method

	DEF Solved method
		IF @answer == @guess
			p true
		ELSE
			p false
		END IF statement
	END Solved
END GuessingGame class
=end


# Initial Solution

class GuessingGame
  def initialize(answer)
    @number=answer
  end

  def guess(guess)
  	if guess < @number
  		@guess = :low
  	elsif guess > @number
  		@guess = :high
  	else
  		@guess = :correct
  	end
  end

  def solved?
  	if @guess == :correct
  		return true
  	else
  		return false
  	end
  end
end

# Refactored Solution
class GuessingGame
  def initialize(answer)
    @number=answer
  end

  def guess(guess)
  	if guess < @number ; @guess = :low
  		elsif guess > @number ; @guess = :high
  		else @guess = :correct
  	end
  end

  def solved?
  	if @guess == :correct ; return true
  		else ; return false
  	end
  end
end

# Reflection
=begin
How do instance variables and methods represent the characteristics and 
behaviors (actions) of a real-world object?

With classes, you can get a program to respond exactly the way you want
it. Thus, you can create a class that will have a number of methods
that each represent a sort of verb. That is something we did earlier with
the dice activity because we could create a method within die that would 
perform a task once we "rolled" the dice. We determined exactly what that
roll did. The same thing is happening here when we "guess" what the number
is.

When should you use instance variables? What do they do for you?

Instance variables are good for using inside classes. One reason we would
use instance variables is that they are a bit more flexible than local
variables and can be references to in different methods. We used an instance
variable in this activity to represent the state of our guess object. 
We had to account for our instance varible taking several different
conditions based on user input.

Explain how to use flow control. Did you have any trouble using it in this 
challenge? If so, what did you struggle with?

Flow control is a way to set conditions in Ruby that information must filter
through. In our example above, we created an if and else condition. 
Ruby would enter this statement and provide one result when finding true 
for the "IF" statement, leaving any other condition to the "ELSE" catch-all.
The "ELSIF" condition is used when we want to set another condition
which our information could be filtered through.

Why do you think this code requires you to return symbols? What are the 
benefits of using symbols?

It seems that everything stored in ruby "strings, integers, boolean", will
also be stored as a symbol of the same name, so we can cut out this step
by making high, low, and correct symbols from the beginning. This will
make our program run faster and cut back on memory storage.

=end