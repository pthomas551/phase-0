# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Array with die sides
# Output: Array value at random die side
# Steps:
# Initialize with die sides array and # of sides
# Access die array at random value from 0 to sides
#
# Initial Solution
=begin
class Die
  def initialize(sides)
    raise ArgumentError if sides.is_a?(Array) == false || sides == []
    @die_array = sides
    @die_sides = @die_array.length
  end
  def sides
    return @die_sides
  end
  def roll
    @die_array.at(rand(@die_sides))
  end
end
=end


# Refactored Solution

class Die
  # reader attribute for number of sides
  attr_reader :sides
  # initialize w/ array of sides and # of sides
  def initialize(sides)
    raise ArgumentError if sides.is_a?(Array) == false || sides == []
    @die_array = sides
    @sides = @die_array.length
  end
  # roll by going to random index value in array
  def roll
    @die_array.at(rand(@sides))
  end
end






# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The main difference was that we are going to a random index value in an array as opposed to just a random number. So there were no major logic changes needed.

What does this exercise teach you about making code that is easily changeable or modifiable?

It's good programming practice because it allows code to be adapted to a number of applications, or easily change to accomodate changes in the overall project.

What new methods did you learn when working on this challenge, if any?

I did not learn any new methods but I went deeper into the workings of the .rand method.

What concepts about classes were you able to solidify in this challenge?

I learned about and successfully implemented assigning attributes to a class.

=end