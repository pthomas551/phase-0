# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


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
