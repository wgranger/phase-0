# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  new_array = []
  array_1.each do |var|
  new_array.push(var)
end
  array_2.each do |var|
  new_array.push(var)
end
  return new_array
end