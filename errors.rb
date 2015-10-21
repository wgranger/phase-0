# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# This error is coming from errors.rb

# 2. What is the line number where the error occurs?
# This error was originally in line 170 at the end of the document.

# 3. What is the type of error message?
# This error is a syntax error.

# 4. What additional information does the interpreter provide about this type of error?
# There was an unexpected end-of-input when keyword_end was expected.

# 5. Where is the error in the code?
# The error in the code is with the method above (def cartman_hates(thing))

# 6. Why did the interpreter give you this error?
# I received an error because this method didn't have an ending tag. The
# "end" already listed ended the while statement. The "end" I inserted
# ended the method.

# --- error -------------------------------------------------------

south_park = ()

# 1. What is the line number where the error occurs?
# The error occurs in line 41.

# 2. What is the type of error message?
# The error has an undefined local variable.

# 3. What additional information does the interpreter provide about this type of error?
# "south park" for main:Object. This is a name error.

# 4. Where is the error in the code?
# The error is with my undefined variable.

# 5. Why did the interpreter give you this error?
# south-park doesn't point to anything. It is undefined. I can set it 
# to equal an empty input and that will take care of the error.

# --- error -------------------------------------------------------

cartman=()

# 1. What is the line number where the error occurs?
# This error occurs in line 62.

# 2. What is the type of error message?
# The error is due to an undefined method.

# 3. What additional information does the interpreter provide about this type of error?
# Running the program in the terminal says there is (NoMethodError)

# 4. Where is the error in the code?
# The error is with the undefined method.

# 5. Why did the interpreter give you this error?
# Cartman doesn't point to anything. There could be an equals sign
# to set the variable to an empty block.

# --- error -------------------------------------------------------

def cartmans_phrase()
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase = 'I hate Kyle'

# 1. What is the line number where the error occurs?
# This error occurs in line 83

# 2. What is the type of error message?
# There are the wrong number of arguments (1 for 0)

# 3. What additional information does the interpreter provide about this type of error?
# This is an argument error.

# 4. Where is the error in the code?
# I believe the error was due to the method not taking any arguments.

# 5. Why did the interpreter give you this error?
# The method took no arguments and when it was called it needed to equal
# a string.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says = "shit"

# 1. What is the line number where the error occurs?
# The error occurs in line 106

# 2. What is the type of error message?
# Again, we have the wrong number of arguments (0 for 1).

# 3. What additional information does the interpreter provide about this type of error?
# Simply that this is an argument error.

# 4. Where is the error in the code?
# I believe the error occurs when the method is called on a later line.

# 5. Why did the interpreter give you this error?
# Because when cartman_says is called there is no argument given.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "jeff")

# 1. What is the line number where the error occurs?
# This error is in line 132.

# 2. What is the type of error message?
# Another problem with the "wrong number of arguments." This time there
# is 1 for 2.

# 3. What additional information does the interpreter provide about this type of error?
# That there is an argument error.

# 4. Where is the error in the code?
# The error exists when the method is called.

# 5. Why did the interpreter give you this error?
# Because only one argument was given when the method was called rather
# than two.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# The error occurs on line 157.

# 2. What is the type of error message?
# String can't be coerced into Fixnum.

# 3. What additional information does the interpreter provide about this type of error?
# That this is a TypeError.

# 4. Where is the error in the code?
# The error occurs on the single line and is a problem with math.

# 5. Why did the interpreter give you this error?
# This is kind of a syntax problem too. The string must go first,
# and the multiplication goes next.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# The error is in line 177.

# 2. What is the type of error message?
# in '/': divided by 0

# 3. What additional information does the interpreter provide about this type of error?
# This is a ZeroDivisionError.

# 4. Where is the error in the code?
# The error is in the numbers that are being divided.

# 5. Why did the interpreter give you this error?
# You can't divide a number by zero.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# The error is in line 197.

# 2. What is the type of error message?
# This is a "require_relative" message.

# 3. What additional information does the interpreter provide about this type of error?
# This is a load error.

# 4. Where is the error in the code?
# This might be an error in the computer, because this file doesn't exist.

# 5. Why did the interpreter give you this error?
# This file isn't on the local drive.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
	
Which error was the most difficult to read?

I had the most difficulties with the first error beacuse the program
stated that the error was at the end of the program rather than in line
with the actual error. I actually thought that the wrong program had been
uploaded.

How did you figure out what the issue with the error was?

I deleted everything but that one line of code just to make sure nothing
else was fouling up the program. Once I saw the same code existed, I
solved the problem with that code and went to the next problem. I knew I
had figured out what was happening because the next error appeared in the
terminal.

Were you able to determine why each error message happened based on the code? 

Yes, I was a bit confused by the argument errors at first. I knew why the
errors appeared, but I wasn't so sure how to solve them at first. Seeing
a few argument errors in a row made me more comfortable with understanding
this type of error.

When you encounter errors in your future code, what process will you follow to help you debug?
	
I think the internet is a good resource. StackOverflow has a good bit of 
troubleshooting resources. I have a good understanding of simple errors now, 
but I would use the internet to learn more about unknown errors. I'm not
too excited to notice that errors can "appear" at places where they are not
exactly located (as what happened in the first error of this challenge).

= end








