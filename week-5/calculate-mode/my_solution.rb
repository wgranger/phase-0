# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Gregg Wehmeier]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
=begin
# What is the input?
An array of numbers or strings
# What is the output? (i.e. What should the code return?)
An array containing the most common element(s)
# What are the steps needed to solve the problem?

DEFINE method [mode] that takes an array argument

Initialize an empty hash

for EACH element in array 
IF element exists as key in hash
increment key's value by one
ELSE 
Use element as new key in hash with a value of 1
END

Initialize new variable highest_value and set equal to 0
Initialize empty array mode_array
for EACH key in hash
IF key's value > highest_value 
highest_value = key's value
mode_array = key
ELSIF key's value = highest_value
push key into mode_array
END

RETURN mode_array
=end

# 1. Initial Solution
def mode(array)
  frequency = Hash.new(0)
  array.each { |x|  frequency[x] += 1 }
  p frequency 
  highest_value = 0 
  mode_array = []
  frequency.each do |key, value|
    if value > highest_value
      highest_value = value
      mode_array.replace([key])
    elsif
      value == highest_value
      mode_array.push(key)
    else
      next key
    end
  end
  p mode_array
  return mode_array
end


# 3. Refactored Solution

def mode(array)
  frequency = Hash.new(0)
  array.each { |x|  frequency[x] += 1 }
  mode_array = frequency.select{|k, v| v == frequency.values.max}.keys
end

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

We decided to use a hash to store the values we needed for the original
array as well as a value that acted as a counter for each instance of the
element in the original array. Once we finished counting the instances of
each element, we were able to filter out those elements that contained the
max value and collect them into an array.

Were you more successful breaking this problem down into implementable 
pseudocode than the last with a pair? 

Pseudocoding came much easier with this challenge than with last problems 
we worked on. I'm starting to see each line of pseudocode as one action we
need to implement. In that sense, it's making me feel more confident about
the transition from pseudocoding to the initial solution. It seems much
more like a natural process.

What issues/successes did you run into when translating your pseudocode 
to code?

We ran into a few issues with our strings not accepting certain methods 
that would only be passed to arrays. Also, a good bit of our code was 
inoperable due to a few missing characters, and it took us a while to
catch this error.

What methods did you use to iterate through the content? Did you find any 
good ones when you were refactoring? Were they difficult to implement?	

We pretty much used the simple .each iteration to examine every element of
our array and hash. Our initial solution was a bit wordy, but we were 
able to make due with this .each iteration. We wound up using the .select
enumeration with our refactoring in order to select those elements which
matched a certain criteria. After this, we took the elements in the hash
that contained that max values and printed the keys as a result.
=end

