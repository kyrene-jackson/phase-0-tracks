# Virus Predictor

# Pocket Gophers:
# I worked on this challenge [with: Mandy].
# We spent [2] hours on this challenge.

# Nighthawks:
# Emergency situation
# Refactored solo

# EXPLANATION OF require_relative
# require_relative tries to load the data from the file name given as a string (relative to where the current file is).
# Whereas require would require the full file path.
#=======================================================================

require_relative 'state_data'

class VirusPredictor
  # On each new instance, accepts 3 arguments and assigns those arguments as the values of each instance variable for that instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Takes state data from hash and passes it to the predicted_deaths and speed_of_spread methods and prints out the results from each.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # Takes population_density, population and state values and based off the population_density, calculates the number_of_deaths and assigns # its value to the integer <= the resulting float.
  # predicted deaths is solely based on population density
  def predicted_deaths
    # Release 8: Refactor.
    # Take averages of pop. density and number_of_deaths formula
    # to reduce amount of conditionals.
    if @population_density >= 175
      number_of_deaths = (@population * 0.35).floor
    elsif
      @population_density >= 75
      number_of_deaths= (@population * 0.15).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose about #{number_of_deaths} people in this outbreak"

  end

  #Takes population_density and state values and based on population_density, calculates the speed of the spread of the disease in months.
  def speed_of_spread
     # We are still perfecting our formula here. The speed is also affected
     # by additional factors we haven't added into this functionality.
    speed = 0.0
    # Release 8: Refactor.
    # Take averages of pop. density and speeds
    # to reduce amount of conditionals.
    if @population_density >= 175
      speed += 0.75
    else
      speed += 1.75
    end

    puts " and will spread across the state in about #{speed} months.\n\n"

  end

end

#=======================================================================
# Original methods before refactor:

# if @population_density >= 200
#   speed += 0.5
# elsif @population_density >= 150
#   speed += 1
# elsif @population_density >= 100
#   speed += 1.5
# elsif @population_density >= 50
#   speed += 2
# else
#   speed += 2.5
# end

# if @population_density >= 200
#   number_of_deaths = (@population * 0.4).floor
# elsif @population_density >= 150
#   number_of_deaths = (@population * 0.3).floor
# elsif @population_density >= 100
#   number_of_deaths = (@population * 0.2).floor
# elsif @population_density >= 50
#   number_of_deaths = (@population * 0.1).floor
# else
#   number_of_deaths = (@population * 0.05).floor
# end


#=======================================================================
# DRIVER CODE

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# Release 5
# Create a report for all 50 states in a DRY way
STATE_DATA.each do |state, data|
  current_state = VirusPredictor.new(state, data[:population_density], data[:population])
  current_state.virus_effects
end

#=======================================================================
# Reflection Section
# 1. The state_data hash uses both the hash rocket syntax, and symbol (shortcut) syntax. The hash rocket syntax, is used when setting strings as keys whereas using a symbol allows you to use a shortcut that skips the hash rocket. Although symbols allow this shortcut, an important note is that they cannot contain spaces.

# 2. require relative is printed above a class declaration and tries to load a file by the name of the given string that is relative to the file containing the require_relative statement. Whereas require indicates the full path of a file that is relative to the current directory.

# 3. You can iterate through a hash for just accessing a value, just accessing a class, or initializing a new instance using the keys to return the values.

# 4. When refactoring virus_effects, the fact that it set perameters for variables that were already instance variable stood out to me. Passing arguments through an instance method defeats the purpose of having instance variables.

# 5. The most solidified concept for this challenge was the role of instance variables as well as iterating through nested data structures.
