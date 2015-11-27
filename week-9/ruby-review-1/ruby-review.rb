# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
=begin
CREATE a method reverse_words that takes a string as an argument
	Turn string into an array of each word
	Reverse each item in the array
	Join each word into string with a space
END method

=end
# Initial Solution
=begin
def reverse_words(string)
  array = string.split(" ")
  array.map! do |x|
    x.reverse
  end
  p array.join(" ")
end
=end
# Refactored Solution

def reverse_words(string)
  array = string.split(" ")
  array.map! do |x| x.reverse end
  p array.join(" ")
end

# Reflection
=begin
What concepts did you review in this challenge?

I reviewed simple methods to change arrays into strings and back, depending
on how you want to manipulate an element. I'm starting to notice the 
difference between which methods are destructive and non-destructive and 
when each should be called. This is important 

What is still confusing to you about Ruby?

This was a rather simple exercise. I think with more practice I will begin
to recall methods and which one to use without doing any research. At this
point, I'm familiar with what methods to use, but I sometimes have to remind
myself exactly how they work. I'd like to get to the point where this is
automatic.

What are you going to study to get more prepared for Phase 1?	

I really like these challenges on Canvas. I might also read the Eloquent
Rubyist, because there was a good bit of information from that text that 
I didn't get from my first read through. It might be easier to retain this
information since I now have a basic understanding of Ruby.
	
=end