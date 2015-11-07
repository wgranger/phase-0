# Your Names
# 1) Will Granger
# 2) Edward Gemson

# We spent [1] hour on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3
  #A Hash is created that contains serving sizes of each food item
  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end
  #Food Library refers to the key and value of the library hash, and is comparing it to the key of the hash- which will never evaluate to be true, unless a food item that isn't in library is added. Makes sure the food added is actually in library hash.
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  #An error is raised if an "item to make" is not in the library hash.
  serving_size = library.values_at(item_to_make)[0]
    #Looks at the value for the specific key used. "0" refers to an empty an empty array that has the values for the library hash. 
  serving_size_mod = order_quantity % serving_size
  #Modulo's the order quantity by serving size, sets up for case below
  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
    #If the modulo evaluates to 0, this will print, if the number of serving sizes is even.
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
#Prints if the modulo doesn't evaluate to 0, and the number of serving sizes isn't even, and adds leftover values at the end. 

# REFACTOR
def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false

  serving_size = library[item_to_make]
  leftover_ingredients = order_quantity % serving_size

  if leftover_ingredients < 5 && leftover_ingredients > 0
    suggestion = "We suggest you bake #{leftover_ingredients} cookies."
  elsif leftover_ingredients == 5
    suggestion = "We suggest you bake one cake."
  elsif leftover_ingredients == 6
    suggestion = "We suggest you serve one cookie and one cake."
  else
    suggestion = "Enjoy your meal."
  end
  
  return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{order_quantity % serving_size} leftover ingredient(s). #{suggestion}"
end
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

Aside from refactoring, some of the variables needed to be changed to make
them more logical to a person who glanced over the code. It was fairly
easy to eliminate lines, but I think making the code contain logical names
was a big step in increasing readibility. 

Did you learn any new methods? What did you learn about them?

I learned about using the has_key? method, but I need to keep in mind that
this method will return a boolean, not a string. This was a helpful method
to use when I was searching if a hash contained a key.

What did you learn about accessing data in hashes? 

I learned that it's important to print out items in the console to see
exactly what your code is returning. For example, in this original problem
there were errors with iterating over a hash as though it were an array. 
I think it's easy in a hash to believe you are returning a key when you 
might actually be returning a value, or both.

What concepts were solidified when working through this challenge?

I feel a bit more comfortable referring to values of a hash, but I would
still like some more practice with this. Although I've been using arrays
pretty often throughout my work, I feel like I'll be using hashes much more
in the future.
=end