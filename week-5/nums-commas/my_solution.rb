# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
#The input will be any positive integer
# What is the output? (i.e. What should the code return?)
# The code should return the input with commas separating the thousands place, etc.
# What are the steps needed to solve the problem?
=begin
Define a method separate_comma that takes an integer as an argument
	break/split number into an array
	use reverse indexing to count backwards 
	place a comma after every three (counting backwards)
	return result as a string
=end

# 1. Initial Solution
def separate_comma(integer)
  array=[]
  array = integer.to_s.split(//)
  i= -4
  while i.abs <= array.length do
  array.length > 4
    array.insert(i, ",")
    i = i-4
    end
  p array.join.to_s
end

# 2. Refactored Solution
def separate_comma(integer)
  array= integer.to_s.split(//)
  i= -4
  while i.abs <= array.length do
  array.length > 4
    array.insert(i, ",")
    i = i-4
    end
  p array.join
end


# 3. Reflection
=begin
	
What was your process for breaking the problem down? What different 
approaches did you consider?

I felt like it was rather easy to break down this process into pseudocode
once I knew exactly what we were building. I felt like the methods I would
need to solve this were just within my reach. Many of the methods I knew
and a few others I found while skimming through the Ruby Docs.

Was your pseudocode effective in helping you build a successful initial 
solution?

It definitely was. I often looked at my pseudocode side by side while
working through my problem so I would know what the next step would be.
However, I didn't initially plan on having a counter when I wrote my 
pseudocode, so this addition came when I began to create my initial solution.

What Ruby method(s) did you use when refactoring your solution? What 
difficulties did you have implementing it/them? Did it/they significantly 
hange the way your code works? If so, how?

I mainly got rid of some parts of my code when refactoring. It turned out 
that I didn't necessarily need several lines of code. For example, I often
had the beginning part of a block on one line and the end of the code on 
another line. I also found out that this array was kept as a string once
it was joined back together.

How did you initially iterate through the data structure?

I decided to use a while loop. I initially tried to use a loop iteration, 
but I found out this wouldn't work for my purposes. I had to look up a 
few items in the Ruby-Docs. For example, I wasn't sure how to make a negative
integer positive, and I also needed to know how to insert an element into
a certain space in an array.

Do you feel your refactored solution is more readable than your initial 
solution? Why?
	
Somewhat. The second solution is definitely less wordy. I feel like there
is a more concise way to solve this problem without the solution I arrived
upon, but I'm satisfied with my final solution.

end




