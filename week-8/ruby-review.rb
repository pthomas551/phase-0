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