# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
=begin
CREATE method is_fibonacci? that takes integer as an argument
  array equals first two fibonacci numbers
  x = 1
  WHILE x < argument
    X equals last two array items
    push x to array
  END loop
  if array includes x
    return true
  ELSE false
end method


=end
# Initial Solution

def is_fibonacci?(num)
  array = [0, 1]
  x = 1
  while x < num
  x = array[-1] + array[-2]
  array.push(x)
  end
  if array.include?(num)
    return true
  else return false
  end
end



# Refactored Solution







# Reflection