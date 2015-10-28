# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  end
  if min_size > array.length
    remainder = min_size - array.length
    remainder.times do array << value  # 2.times
    end
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  if new_array.length >= min_size
    return new_array
  end
  if min_size > new_array.length
    remainder = min_size - new_array.length
    remainder.times do new_array << value
    end
  end
  p new_array
end


# 3. Refactored Solution



# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

Yes. The pseudocoding began to look like real code eventually, and we had 
to try to stop ourselves from writing the intiial code during the 
pseudocoding. However, I think we were able to break the challenge down into
a number of small steps that were easier to work with and made it so our 
actual code was pretty minimal while still being functional.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

This was a surprisingly easy step. Although our actual code didn't pass after
the first few attempts, we got our initial code down without much debate
besides a few discussions about the syntax of functions we were unfamiliar
with. Honestly, the pseudocoding was a bit more time consuming than the 
initial code we settled upon.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial code was not successful because we had a few functions in the wrong
order. For example, when adding items to an array, we tried to point arrows
towards the right (>>), but this didn't pass our code. We also tried to
test our non-destructive method to see if our array remained unchanged, 
but we forgot to remove the test at the end of the non-destructive method, 
so it took a bit of troubleshooting for us to spot the problem and pass
the rspec.

When you refactored, did you find any existing methods in Ruby to clean up your code?

We were pretty satisfied with our code. Refactoring is an interesting and
important concept that I think I'll use more and more as I become comfortable
with Ruby. However, with my limited knowledge of programming, I'm sometimes
at a loss of the best way to refactor some of our challenges.

How readable is your solution? Did you and your pair choose descriptive variable names?

I think our solution is pretty readable. We used "new_array" as a variable that
we could alter without affecting the original array. I suppose we could've chosen
upon a different name for remainder, because it's not too clear what 
remainder was referring to. Perhaps "end_pad", or something to the effect, 
would've been a better option so it was more evident what the variable 
would do.

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods will change the variable it is interacting with. Once a
variable enters a destructive method, the output will be the new state of
that variable. Non-destructive methods will merely give the user an idea of 
how a variable can be altered. The variable will not be permanently changed
once a non-destructive method is executed upon it.

=end

