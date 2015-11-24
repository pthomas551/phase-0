# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Answer integer, guess integer
# Output: :low if guess is too low, :high if guess is too high, :correct if guess is correct
# Steps:
# Initialize class w/ answer integer, solved boolean that defaults to false
# If not integer, raise error
# Guess method that takes guess:
# If guess = answer, return :correct, solved is true
# If guess > answer, return :high, solved is false
# If guess < answer, return :low, solved is false
# Solved method:
# Return solved
#
#

# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    raise ArgumentError if answer.is_a?(Integer) == false
    @answer = answer
    @game_solved = false
  end
  # Make sure you define the other required methods, too
  def guess(guess)
    raise ArgumentError if guess.is_a?(Integer) == false
    @guess = guess
    if @guess == @answer
      @game_solved = true
      return :correct
    elsif @guess > @answer
      @game_solved = false
      return :high
    elsif @guess < @answer
      @game_solved = false
      return :low
    end
  end
  def solved?
    @game_solved
  end
end
=end




# Refactored Solution
class GuessingGame
  # Initialize class w/ answer integer, solved boolean that defaults to false
  def initialize(answer)
    raise ArgumentError if answer.is_a?(Integer) == false
    @answer = answer
    @solved = false
  end

  def guess(guess) # Guess method that takes guess:
    raise ArgumentError if guess.is_a?(Integer) == false
    @guess = guess
    case @guess
    when @answer # If guess = answer, return :correct, solved is true
      @solved = true
      return :correct
    else
      @solved = false
      # If guess > answer, return :high, If guess < answer, return :low
      (@guess > @answer ? :high : :low)
    end
  end

  def solved?
    @solved # Return solved
  end

end






# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables and methods represent the initial attributes of an object, define the ways you can interact with it, and save the results of your interaction with it. For example, if I had a book on a shelf, it would default to being on the shelf, I would have a method to take it off the shelf, and it would record that state and stay off the shelf until I decided to put it back on the shelf.


When should you use instance variables? What do they do for you?

Instance variables are saved to that instance of the class so they allow you to save the results of your code's interaction with that instance. As such they are helpful when you want to save the state of an object in order to come back to it later.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Ruby has many options for flow control, the most common being if/else and case/when statements. I struggled a bit with figuring out the syntax for a case statement, so I decided to go with if/else for the initial solution. Then I successfully implemented a case statement in the refactored solution, which turned out to be more elegant in my opinion.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Because symbols are static, and too high and too low would be a static value for any given guess/answer combination, they make sense to use as a return value. Symbols are more computationally efficient than strings so it is a good idea to use them whenever possible.

=end