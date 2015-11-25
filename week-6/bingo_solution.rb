# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # create bingo array of strings
  # set column number var to random index in array
  # set letter var to string corresponding w/ random index in array
  # set number var to random number 1-100


# Check the called column for the number called.
  # check if array contains number
  # if so check if index corresponds with column number var
  # if both test pass save location of number and return true

# If the number is in the column, replace with an 'x'
  # if prev method returns true
  # access location of number and replace with 'x'

# Display a column to the console
  # access all values in array with desired index value, save to new array
  # iterate over array, print value and newline

# Display the board to the console (prettily)
  # print each sub array using string interpolation and newline after each array

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @bingo_letters = ['B', 'I', 'N', 'G', 'O']
#   end

#   def play_bingo
#     bingo_column = rand(5)
#     bingo_number = rand(1..100)
#     bingo_letter = @bingo_letters[bingo_column]
#     puts 'Called: ' + bingo_letter + bingo_number.to_s
#     @bingo_board.each do |row|
#       if row.include?(bingo_number) && row.index(bingo_number) == bingo_column
#         row[row.index(bingo_number)] = 'X'
#       end
#     end
#   end

#   def show_column(column)
#     @bingo_board.each {|row| puts row[column]}
#   end

#   def show_board
#     @bingo_board.each do |row|
#       row.each do |value|
#         if value.to_s.length == 2
#           print value.to_s + ' '
#         else
#           print ' ' + value.to_s + ' '
#         end
#       end
#     puts
#     end
#   puts
#   end
# end

# Refactored Solution

class BingoBoard
  # initialize w/ board and bingo letter array
  def initialize(board)
    @bingo_board = board
    @bingo_letters = ['B', 'I', 'N', 'G', 'O']
  end
  # call letters and check off if there is a match
  def play_bingo
    bingo_column = rand(5)
    bingo_number = rand(1..99)
    bingo_letter = @bingo_letters[bingo_column]
    puts 'Called: ' + bingo_letter + bingo_number.to_s
    @bingo_board.each do |row|
      if row.include?(bingo_number) && row.index(bingo_number) == bingo_column
        row[row.index(bingo_number)] = 'X'
      end
    end
  end
  # display desired column from board
  def show_column(column)
    @bingo_board.each {|row| puts row[column-1]}
  end
  # print board to console w pretty formatting
  def show_board
    @bingo_board.each do |row|
      row.each do |value|
        (value.to_s.length == 2 ? (print value.to_s + ' ') : (print ' ' + value.to_s + ' '))
      end
    puts
    end
  puts
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
50.times do
new_game.play_bingo
end
new_game.show_board
new_game.show_column(5)
#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It wasn't too difficult to write the pseudocode. My pseudocode is sometimes a little difficult to transfer into usable code but this will improve as I learn the structure and syntax of Ruby.

What are the benefits of using a class for this challenge?

A class allows you to save the results of playing multiple rounds of bingo as an instance variable.

How can you access coordinates in a nested array?

You access them through using multiple sets of brackets, eg [4][3] for index 3 of the array at index 4

What methods did you use to access and modify the array?

I used .include? to check inclusion and .index to find index values.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I looked at using Enumerable#grep which allows you to access values in an array that meet a search criterion and carry out a code block on them, eg. array.grep('foo') {|x| x = 'bar'}

How did you determine what should be an instance variable versus a local variable?

Instance variables are ones we want to preserve after carrying out methods on the instance, in this case the bingo board. Local variables are ones we don't want to keep between calls of the method, in this case the random numbers we are generating to create bingo calls.

What do you feel is most improved in your refactored solution?

I added some comments to improve readability and also used the ternary operator to compact some code. I often do some refactoring as I go which is why there wasn't a huge difference between the initial and refactored solution.

=end