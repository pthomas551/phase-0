# Die Class 1: Numeric

# I worked on this challenge [by myself.]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: method call to die, die.sides, die.roll
# Output: new die with x sides, number of sides of die, random number 1-x
# Steps:
# initialize method that sets # of sides
# sides method that returns sides variable
# roll method that returns random number based on rolling die
#
#
# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    @die_sides = sides
    raise ArgumentError if sides < 1
  end

  def sides
    return @die_sides
  end

  def roll
    @die_roll = 1 + rand(@die_sides)
  end
end
=end


# 3. Refactored Solution
class Die
# initialize with # of sides
  def initialize(sidesnum)
    @die_sides = sidesnum
    raise ArgumentError if sidesnum < 1
  end
# return # of die sides when sides method called
  def sides
    return @die_sides
  end
# generate random # based on # of die sides when roll method called
  def roll
    @die_roll = rand(@die_sides) + 1
  end
end






# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError is received when an method receives an incorrect argument. It is helpful to define one when you want to restrict the type of arguments a method will receive.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I implemented the rand() method for the first time in this challenge. It was not too difficult to use except for that the numbering starts at zero so it was necessary to add one to the result to avoid an off-by-one error.

What is a Ruby class?
A class defines a new type of object that can be bestowed with various attributes depending on the needs of the program being created.

Why would you use a Ruby class?
It is helpful when an object will be used repeatedly throughout a program.

What is the difference between a local variable and an instance variable?
A local variable is local to a method and cannot be accessed outside the method, whereas an instance variable is local to an instance of a class.

Where can an instance variable be used?
An instance variable can be accessed whenever the instance is accessed.

=end
