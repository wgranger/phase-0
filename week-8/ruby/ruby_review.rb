# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
=begin
Input: Array of integers
Output: Array of integers with "fizz" for multiples of 3, "buzz" for 
multiples of 5, and "fizzbuzz" for multiples of both.

DEF a method that takes an array of integers
	CREATE an empty array titled "output"
	Iterate over each item in the array argument
		IF the item's modulo of 3 && 5 equals zero
			item becomes "fizzbuzz" and is pushed into "output"
		ELSIF the item's modulo of 3 equals zero
			item becomes "fizz" and is pushed into "output"
		ELSIF the item's modulo of 5 equals zero
			item becomes "buzz" and is pushed into "output"
		ELSE
			item is pushed into "output" without change
		END conditional statement
	RETURN "output"
END method

=end
# Initial Solution

def super_fizzbuzz(array)
	output = []
	array.each do |x|
		if x % 3 == 0 && x % 5 == 0
			x = "FizzBuzz"
			output.push(x)
		elsif x % 3 == 0
			x = "Fizz"
			output.push(x)
		elsif x % 5 == 0
			x = "Buzz"
			output.push(x)
		else
			output.push(x)
		end
	end
	p output
end


# Refactored Solution
def super_fizzbuzz(array)
	fiizzBuzz = []
	array.each do |x|
		if x % 3 == 0 && x % 5 == 0 then x = "FizzBuzz"
			fizzBuzz.push(x)
		elsif x % 3 == 0 then x = "Fizz"
			fizzBuzz.push(x)
		elsif x % 5 == 0 then x = "Buzz"
			fizzBuzz.push(x)
		else
			fizzBuzz.push(x)
		end
	end
	p fizzBuzz
end


# Reflection
=begin
What concepts did you review or learn in this challenge?

I was a bit rusty on my syntax; however, when I looked over some of my
previous Ruby solutions, I remembered just what I needed to do to finish
writing the solution. I was surprised that I was able to solve this problem
the first time without any problems. It kind of just clicked once I started
working.

What is still confusing to you about Ruby?

This challenge was rather simple, and the only problem I encountered was 
remembering to "end" my conditional statement. I was a bit unsure which
items needed an end, but I caught my problem pretty quickly. Aside from that,
I didn't have any issues coming to a conclusion for this challenge.

What are you going to study to get more prepared for Phase 1?	

I'm going to work on some of the challenge problems in our Ruby module.
I could read about Ruby, but I think I learn the most by actually working 
with Ruby and creating my own solutions. I'm glad we have the exercises 
in Canvas to work with.
	
=end