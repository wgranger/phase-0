# Virus Predictor

# I worked on this challenge [with: Becky Lehmann].
# We spent [1.75] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative links the rb file to another file, such as 
# an rspec file or a file with data, using relative referencing
# for files within the project. You would use "require" for 
# absolute referencing. Also, unlike require_relative, require 
# will search through all directories to find the file. Require # would be used for external gems or libraries.
# 
require_relative 'state_data'

class VirusPredictor

  # Takes three arguments, state_of_origin, population_density   # and population and assigns them to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Pushes instance variables as arguments into two other methods, predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private

  # Takes arguments of population_density, population and state
  # Establishes conditional statement and calculates the number
  # of deaths based on specified ranges of population density
  # Prints out statement with state and predicted number of 
  # deaths due to outbreak
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 50 
      number_of_deaths = (((@population_density/50)/10.0)*                @population).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Takes two arguments, population_density and state
  # Calculated speed of spread in months based on ranges of 
  # population_density
  # Puts a string to indicate speed of spread
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
  
    case @population_density
      when 150...200 then speed = 1
      when 101..150 then speed = 1.5
      when 51..100 then speed = 2
      when 0..50 then speed = 2.5
      else speed = 0.5
    end    

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, value|
  virus_predictor =  VirusPredictor.new(state, value[:population_density],   value[:population]) # viruspredictor with alabama's stuff
  virus_predictor.virus_effects
end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

#=======================================================================
# Reflection Section
=begin
  
What are the differences between the two different hash syntaxes shown 
in the state_data file?

The main difference between the two hash syntaxes is that one uses the rocket
hash while the other one uses a colon to separate key/value pairs. We can
use the colon to separate the two when we are dealing with symbols for keys.
However, we must use the rocket hash for outside keys because they are strings
and cannot use the colon separator. 

What does require_relative do? How is it different from require?

Require_relative called another file as a reference point to draw information
into the fire we were working on. This is great when we are working on a 
project and have to extract specific data from another file where we store
specific data. It differs from require in that require is used to call on
gems that might be used in the development process. We might need to call
on some gems that are not loaded into our version of Ruby.

What are some ways to iterate through a hash?

So far in Ruby, we have looked over the .each iteration as well as some
enumerators that can search for and extract more specific bits of information
from a hash. For this exercise, we used the cut and dry .each iteration
to go through each value in our hash.

When refactoring virus_effects, what stood out to you about the variables,
 if anything?

We really didn't need to keep passing arguments to each method since we
are dealing with instance variables that can be used throughout every
method in the class. Becuase of this, we simply removed the arguments from 
each method and noticed that the code ran fine either way.

What concept did you most solidify in this challenge?

We used a "case" in our refactoring, which cut the code down a good bit. 
I had never used this in refactoring, but it is a very helpful way to
increase readability while cutting down on our code immensly. I also think 
it's unnecessary to pass arguments to methods inside a class if the same
instance variable is created with the initialization, so I'm beginning to
understand the power of the initializatin method.

=end
