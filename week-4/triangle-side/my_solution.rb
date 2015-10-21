# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if a == 0 || b == 0 || c == 0
  return false
  elsif a + b > c && b + c > a && a + c > b
  return true
  end
end