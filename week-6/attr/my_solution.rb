#Attr Methods

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: A string as an instance variable
# Output: A returned string greeting the original string
# Steps:
=begin
CREATE a NameData class
	DEF initialize method that attaches an instance variable to the name
	END initialize method
END NameData class

CREATE a Greetings class
	DEF initialize method 
		create instance variable of NameData.new
		puts greeting message to console using original name
	END initialize method
END Greetings class

=end

class NameData
	attr_reader :name

	def initialize
		@name = "Will"
	end
end


class Greetings
	def initialize
		@info = NameData.new
	end

	def greets
		puts "Good Morning, " + @info.name
	end
end


# Reflection
=begin
What are these methods doing?

The methods in the first release are basically accessing instance variables within
a class. However, later in the release our methods are changing those
instance variables after printing them out. I had never seen the "sleep"
method in Ruby, so it's cool to see there is an option if I want my program
to hold off completing a task. In this release, the "sleep" method was used
to make the console look like it was "thinking" or retrieving the information.

How are they modifying or returning the value of instance variables?

This release is modifying values by creating a method that allows for the 
alteration of pre-set values. Later, when that method is called, new values
can be stoed into the instance variables. These are destructive methods. 
Other methods are returning values of instance variables simply by printing
the return into the console. 

What changed between the last release and this release?

The what_is_age method was removed because the attr_reader meethod took
its place. What_is_age is no longer needed because there is a built in
Ruby method that will return the class variable that was called upon with
this method.

What was replaced?

Attr_reader replaced what_is_age. It's interesting to see the syntax provided
by an inherent Ruby method. What_is_age is no longer needed and has been
replaced with more succinct code.

Is this code simpler than the last?

This code is a bit simpler than the last. For one, we were able to remove 
a method contained in our code, replacing it with just one line.

What changed between the last release and this release?

With release 3 we changed the way the information was called upon. 
Because of the att_writer, we can now write instance_of_variable.age to
write over the information stored in the @age instance variable.

What was replaced?

When writing the age value, we replaced the .change_my_age method with
.age to store new information in the class variable. We are able to do this
because we deleted the unnecessary change_my_age method that is now being
fulfilled by the attr_writer.

Is this code simpler than the last?

This code is simpler because we can replace an entire method with one line
of code.

What is a reader method?

A reader method will find an instance variable within a certain class and
return the result. This is a simple way of seeing what kind of information
is stored within each variable.

What is a writer method?

A writer method will record over the value that is stored within a certain 
instance variable. This is a quick and easy way to change values.

What do the attr methods do for you?

These methods make it easier to manipulate information stored within classes.
By using these methods, we can easily tap into and alter certain information.

Should you always use an accessor to cover your bases? Why or why not?

I don't think an accessor is always necessary if you want to be careful
about changing your information. Sure, an accessor could read variables, 
but if that's all you're aiming for it's good to avoid accidently writing
over values in the process. 

What is confusing to you about these methods?

I understand how the methods work, but there are many times when we are 
going back and forth between methods and initializing new instances 
simply to access previous information. There will probably be many times 
in the future when I am confused about a program simply because there are
so many references.

