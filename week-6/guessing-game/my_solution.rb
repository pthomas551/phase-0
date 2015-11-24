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
      return :high if @guess > @answer # If guess > answer, return :high, solved is false
      return :low if @guess < @answer # If guess < answer, return :low, solved is false
    end
  end

  def solved?
    @solved # Return solved
  end

end






# Reflection
