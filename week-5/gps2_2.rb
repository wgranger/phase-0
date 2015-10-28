
# PSEUDOCODE:
# -----------

# What is your main goal / task?

# What methods do you need for this?

# Do you need to initialize any variables or contianers for your methods to use?
# (Outside of the methods)

# Then for each method...
# 1. What is the expected input?
# 2. What is the expected output?
# (this can be updating something without a return)
# 3. What are the steps to turn input into output? (most important)


# initializers
# ------------
# 1. Initialze an empty hash 'list_items'.


# add_item
# --------
# Input: 'item_name' as a string, and 'item_qty' as an integers.
# Output: Update the 'list_items' has with the new item.

# 1. Add the new item to the 'list_items' hash, where the item_name is the key, and the item_qty is the value.


# delete_item
# -----------
# Input: 'item_name' as a string
# Output: Update the 'list_items' that does not include 'item_name'

# 1. Remove the 'item_name' from the list_items hash
# 2.
# 3.

# update_quantity
# ------------
# Input: 'item_name' as a string, 'item_qty' as an integer
# Output: Updated 'list_items' hash.

# 1. Revise 'item_name' quantity by changing the integer value
# 2.
# 3.




# display_list
# ------------
# Input: none
# Output: 

# 1.
# 2.
# 3.






# INITIAL CODE:
# -------------
$list_items = {}

# local_variable
# - only usable in the scope (aka container, aka method) that its defined.

# $global_variable
# - visible / usable everywhere

# CONSTANT
# - is a global variable that you cant change once you set it.


def add_item(item_name, item_qty)
#   $list_items[item_name] = item_qty
  # my_hash[key] = value
  # This will create a NEW key value pair
  # OR update (aka replace) the value for an existing key.
    
  #   my_hash[key] += value
  #   will INCREASE the value for an existing key.
  if $list_items.include?(item_name)
    # Increase that item
    $list_items[item_name] += item_qty
  else
    # Create the new item
    $list_items[item_name] = item_qty
  end
end

def update_item(item_name, item_qty)
  $list_items[item_name] = item_qty
end
  
  
def delete_item(item_name)
  $list_items.delete(item_name)
end


def display_list
  $list_items.each do |item_name, item_qty|
    puts "You need to purchase #{item_qty} #{item_name}"
  end
end

# DRIVER CODE:
# ------------

add_item("lemonade", 2)
add_item("tomatoes", 3)
add_item("onions", 1)
add_item("ice cream", 4)
display_list
delete_item("lemonade")
display_list
update_item("ice cream", 1)
display_list
# => {"apples" => 6}

=begin
What did you learn about pseudocode from working on this challenge?

I learned that pseudocode can take many different forms. There is no right way to pseudocode.
Also, we are still learning pseudocode, so this will probably become more natural as we work.
We tended to overthink pseudocoding in this challenge, and (depending on the problem) if can
often be just one or two lines to achieve the MVP.

What are the tradeoffs of using Arrays and Hashes for this challenge?

Arrays use integer indexing but must always be kept in an order. Hashes can have a unique
value set to each key, so for the purpose of this activity with values changing often, it
was best for us to use hashes.

What does a method return?

A method returns whatever is on the last line of that method. The method will take some input
based on whatever argument was given, take that argument through some code, and spit out
and output at the last line of the method in the return.

What kind of things can you pass into methods as arguments?

There are several things you can pass onto methods: strings, integers, and booleans. I
suppose you could also pass on an array as a method argument.

How can you pass information between methods?

You can pass information between methods using an argument. For example, when you call
a method you will also place an argument that will enter that method's parameters. We
did this in our challenge with some driver code at the end of the code in order to test
that everything was working the way we wanted.

What concepts were solidified in this challenge, and what concepts are still confusing?

We learned more about global variables during this activity. We ran into the problem of
calling upon a hash outside of a method but were able to solve this problem once we made
our original hash a global variable. I had worked with global variables a bit in the past, 
but this was the first time I saw global variables in action and could see the benefits
of using them.
=end



