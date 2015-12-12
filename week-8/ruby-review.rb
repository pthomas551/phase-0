# Pseudocode

# initialize output array
# iterate over array and run fizzbuzz tests on each value
# if test evaluates true, store value at corresponding index in output array

# Original Solution

# def super_fizzbuzz(input_array)
#   output_array = Array.new(input_array.length)
#   input_array.each_with_index do |value, index|
#     if value % 15 == 0
#       output_array[index] = 'FizzBuzz'
#     elsif value % 3 == 0
#       output_array[index] = 'Fizz'
#     elsif value % 5 == 0
#       output_array[index] = 'Buzz'
#     else
#       output_array[index] = value
#     end
#   end
# return output_array
# end

# Refactored Solution

def super_fizzbuzz(input_array)
# initialize output array
  output_array = Array.new(input_array.length)
# iterate over array and run fizzbuzz tests on each value
# if test evaluates true, store value at corresponding index in output array
  input_array.each_with_index do |value, index|
    if value % 15 == 0; output_array[index] = 'FizzBuzz'
    elsif value % 3 == 0; output_array[index] = 'Fizz'
    elsif value % 5 == 0; output_array[index] = 'Buzz'
    else
      output_array[index] = value
    end
  end
output_array
end

# driver code

test_array = [123,354,123,65,34,15,3,4562,6,34,7,20]
test_output = super_fizzbuzz(test_array)
puts test_output

# reflection
# What concepts did you review or learn in this challenge?
# I got some more practice doing fizzbuzz and using array methods.
# What is still confusing to you about Ruby?
# It's not very confusing for the moment but there are always new methods to learn! I could still stand to learn more about the Enumerable object, though.
# What are you going to study to get more prepared for Phase 1?
# I'll do the other review challenges, go over our text books, and possibly do some Ruby/JS challenges on HackerRank.
