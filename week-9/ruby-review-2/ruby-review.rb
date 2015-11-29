# Drawer Debugger

# I worked on this challenge [with: Alicia Quezada].
# I spent [1.5] hours on this challenge.

# Original Code

class Drawer
  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @item = item
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents = []
  end

  def view_contents
   puts "The drawer contains:"
   @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{@type}"
    @clean = false
  end
  
  def clean_silverware
    @clean = true
  end
  
end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents
silverware_drawer.add_item("spoon")
# What will you need here in order to remove a spoon? You may modify the driver code for this error.
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?("spoon")
silverware_drawer.remove_item("spoon") #What is happening when you run this the first time?
spoon = Silverware.new("spoon")
puts spoon.eat #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE






# Reflection
=begin

What concepts did you review in this challenge?

I reviewed working with Ruby classes on this challenge. I feel a bit
more comfortable using classes and how to avoid errors listed in tests.
This was an interesting challenge to go through, and it tested my ability
to encounter problems and find solutions to them.

What is still confusing to you about Ruby?

I'm not really satisfied with out solution to this problem. We solved the
final two errors by editing the driver code, and I don't believe that was
a sound solution to the problem. I tried to come back to the problem later
and determine what was wrong with the classes, but I had some difficulties
with the way each method was interacting with one another. I hope to clear
up some of these issues once I arrive on site in a few days.

What are you going to study to get more prepared for Phase 1?	
	
I'm going to study classes in Ruby. I think I have a passing understanding
of classes at this point, but I would really like to solidify my understanding
of this. I am currently living with a friend in Chicago who recently 
completed DBC, so I'm hoping we can have a good conversation about classes
and I can solve this problem and relay the information to the person with
whom I paired.

=end
