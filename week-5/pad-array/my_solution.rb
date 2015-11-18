# Pad an Array

# I worked on this challenge [with Bob Dorff]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, min-size, value (defaults to nil)
# What is the output? (i.e. What should the code return?) modified array padded by value (or not modified)
# What are the steps needed to solve the problem?
=begin
retrieve array size
if array size >= min-size
return array
else
insert value (min_size-array size) amount of times
return modified array to array (for destructive method)
=end

# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
 if array.size >= min_size
  return array
 elsif array.empty?
  array + Array.new(min_size, value)
 else
   array + Array.new((array.size-min_size).abs, value)
 end
 return array
end

def pad(array, min_size, value = nil) #non-destructive
 new_array = [] + array
 if array.size >= min_size
 return new_array
 elsif array.empty?
 new_array = new_array + Array.new(min_size, value)
 else
   new_array = new_array + Array.new((array.size-min_size).abs, value)
   end
end
=end



# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
# return array back if larger than min_size
 if array.size >= min_size; return array
# if array is empty return a array w/ min_size and filled w/ value
 elsif array.empty?; array + Array.new(min_size, value)
# otherwise add on a new array w/ value repeated array.size-min_size number of times
 else; array + Array.new((array.size-min_size).abs, value)
 end
 return array
 end

def pad(array, min_size, value = nil) #non-destructive
# initalizes a new_array that will be returned
 new_array = [] + array
# return new_array back if larger than min_size
 if array.size >= min_size; return new_array
# if array is empty return new_array w/ min_size and filled w/ value
 elsif array.empty?; new_array = new_array + Array.new(min_size, value)
# otherwise add to new_array another array w/ value repeated array.size-min_size number of times
 else; new_array = new_array + Array.new((array.size-min_size).abs, value)
 end
end


# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?

Relatively successful although there was not a 1 for 1 correspondence with the final code.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

We found the pseudocode helpful for laying out the initial steps but some difficulties with syntax and testing required us to make revisions and add additional steps on the fly.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

No, it was not successful because we were not returning the correct output to the console. It turned out that we were using the wrong iterator, and after some research we eventually found that it was easiest to not use an iterator at all.

When you refactored, did you find any existing methods in Ruby to clean up your code?

We found some other methods that would have worked, but none that seemed to offer benefits beyond the ones we had already chosen to use.

How readable is your solution? Did you and your pair choose descriptive variable names?

I think that our solution is reasonably readable; we took care to use variable names that made sense, and in our refactored solution we added comments to the code to increase readability.

What is the difference between destructive and non-destructive methods in your own words?

A destructive method permanently alters its target, while a non-destructive method does not.

end