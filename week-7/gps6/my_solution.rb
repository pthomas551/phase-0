# Virus Predictor

# I worked on this challenge [with Steve Jones].
# We spent [1] hours on this challenge.


# EXPLANATION OF require_relative
#
# require state_data file using relative path
require_relative 'state_data'

class VirusPredictor
  # set instance variables based on input
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calling instance methods to report predicted deaths, speed of spread


  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak"
    speed_of_spread
  end

  private

  # generating predicted death counts based on population density scenarios
  def predicted_deaths

    # predicted deaths is solely based on population density

    return case @population_density

    when 150...200
      (@population * 0.3).floor
    when 100...150
      (@population * 0.2).floor
    when 50...100
      (@population * 0.1).floor
    when 0...50
      (@population * 0.05).floor
    else
      (@population * 0.4).floor

    end
  end
  # reports speed of spread based on population density
  def speed_of_spread #in months
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
 STATE_DATA.each do |state, state_data|
  VirusPredictor.new(state, state_data[:population_density], state_data[:population]).virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# When the keys are strings it uses hash rocket syntax which does not require use of a symbol. When the keys are symbols it uses the symbol: syntax which is more readable and less typing.
# What does require_relative do? How is it different from require?
# require_relative looks up an input file through a relative path which is different from require which uses the path defined in your environment.
# What are some ways to iterate through a hash?
# You can use each, map, or any Enumerable method.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# It is not necessary to pass in variables to instance methods if the data is stored in instance variables.
# What concept did you most solidify in this challenge?
# It was helpful to get a deeper understanding of the utility of instance variables and the correct way to iterate over complex data structures.