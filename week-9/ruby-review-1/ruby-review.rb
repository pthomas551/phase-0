# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin
define fibonacci test function that takes num as argument
while loop
build out fibonacci sequence until sequence_num >= num
end while
if sequence_num == num return true
else return false
=end

# Initial Solution

# require 'bigdecimal'

# def is_fibonacci?(num)
#   num = BigDecimal.new(num)
#   testnum1 = (5 * (num**2) + 4).sqrt(0)
#   testnum2 = (5 * (num**2) - 4).sqrt(0)
#   if testnum1 == testnum1.round || testnum2 == testnum2.round
#     return true
#   else
#     return false
#   end
# end

# Refactored Solution

# We need this to work for Bignums so BigDecimal is needed
require 'bigdecimal'
# Boolean function, returns true if num is a Fibonacci number
def is_fibonacci?(num)
# Convert num to a BigDecimal in case it is a Fixnum
  num = BigDecimal.new(num)
# Get our Fibonacci test numbers
  testnum1 = (5 * (num**2) + 4).sqrt(0)
  testnum2 = (5 * (num**2) - 4).sqrt(0)
# If either are perfect squares, return true
  if testnum1 == testnum1.round || testnum2 == testnum2.round
    return true
  else
    return false
  end
end







# Reflection
# What concepts did you review in this challenge?
# I got more practice with algorithms and got to try out the BigDecimal class.
# What is still confusing to you about Ruby?
# It's not very confusing for the moment but there are always new methods to learn! I could still stand to learn more about the Enumerable object, for example.
# What are you going to study to get more prepared for Phase 1?
# I'll do the other review challenges, go over our text books, and possibly do some Ruby/JS challenges on HackerRank.