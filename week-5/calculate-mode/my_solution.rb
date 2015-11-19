# Calculate the mode Pairing Challenge

# I worked on this challenge [with Caroline Kenworthy]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array of numbers or strings
# What is the output? (i.e. What should the code return?)
# An array including the most frequent values
# What are the steps needed to solve the problem?
# 1. Create empty hash
# => a. keys will be the number of occurrences of given array element
# 2. Compare all elements in array;
# => a. assign elements w/ reoccurrences to the # of occurrences (to appropriate key in hash)
# 3. Return array with highest # of occurrences



# 1. Initial Solution
=begin
def mode(list)
  mode_hash = list.group_by { |element| list.count(element)}
    mode_hash = mode_hash.max_by{ |key, value| key }
  mode_hash.to_a.flatten!.uniq!.shift

  mode_hash
end


=end

# 3. Refactored Solution
def mode(list)
# taking list, creating a hash where key is #of occurrences & value is the items with that # of occurences
 mode_hash = list.group_by { |element| list.count(element) }
# takes the key/value pair with the largest key and creates an array
 mode_array = mode_hash.max_by { |key, value| key }.to_a
# concatenates mode_array,removes duplicate values, removes 1st item
 mode_array.flatten!.uniq!.shift

return mode_array

end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We used a hash since this allowed for the creation of separate arrays for each frequency number.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Yes, although we had to make some adjustments as we went along.
What issues/successes did you run into when translating your pseudocode to code?
We had difficulties with selecting the right methods and syntax but these were quickly overcome by reading the documentation and looking at error messages/output.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used group_by to iterate through the content which was somewhat difficult to implement since we were not experienced with its use. So we had to review the documentation carefully and try a couple of different approaches.
=end
