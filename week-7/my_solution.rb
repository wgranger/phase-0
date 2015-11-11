# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative links the rb file to another file, such as 
# an rspec file or a file with data, using relative referencing
# for files within the project. You would use "require" for 
# absolute referencing. Also, unlike require_relative, require 
# will search through all directories to find the file. Require # would be used for external gems or libraries.
# 
# require_relative 'state_data'

class VirusPredictor

  # Takes three arguments, state_of_origin, population_density   # and population and assigns them to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Pushes instance variables as arguments into two other methods, predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # Takes arguments of population_density, population and state
  # Establishes conditional statement and calculates the number
  # of deaths based on specified ranges of population density
  # Prints out statement with state and predicted number of 
  # deaths due to outbreak
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Takes two arguments, population_density and state
  # Calculated speed of spread in months based on ranges of 
  # population_density
  # Puts a string to indicate speed of spread
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
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

# STATE_DATA[state][:population_density]
  # "Alabama" => {population_density: 94.65, population: 4822023},
  # VirusPredictor.new(STATE_DATA[state]"Alabama", 94.65, 4822023)
=begin
alabama.virus_effects
  
  VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
alabama.virus_effects
  
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section