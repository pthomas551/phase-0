# Numbers to Commas Solo Challenge

# I spent 6 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Integer
# What is the output? Comma separated string
# What are the steps needed to solve the problem?
=begin
Define function
Convert integer to string
If length < 4
return string
If length < 7
Reverse string
Put in a comma at index 3
Reverse string back
Else
Create array of digits from 1 to length
Removing digits where %3 != 0
Reverse string
Insert commas at (array)
Reverse string back
=end

=begin
# 1. Initial Solution
def separate_comma(int)
str = int.to_s
length = str.length
if length < 4
  return str
elsif length < 7
  str.reverse!
  str.insert(3, ',')
  return str.reverse!
else
  ins = (1..length).to_a
  ins.reject! { |n| n % 3 != 0 }
  str.reverse!
  iter = 0
  ins.each do |n|
    str.insert((n+iter),',')
    iter += 1
  end
  return str.reverse!
end
end
=end



# 2. Refactored Solution
def separate_comma(int)
int = int.to_s.reverse.chars.each_slice(3).to_a.each {|a| if a.size == 3; a.push ',' end}
int.last.pop if int.last.include?(',')
int.join.reverse
end


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
I initially tried a purely mathematical approach but I couldn't figure out how to make it work, so I considered different ways to do it using string and array manipulation. I pseudocoded out a few possible solutions and if they didn't work in the actual code went back to the pseudocode and changed the logic until I got a workable solution.

Was your pseudocode effective in helping you build a successful initial solution?

Yes, it was a helpful exercise to focus on the logic of the program rather than the syntax.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I used .each_slice and .chars to create a new array and later on .join to join together the arrays. It took some trial and error to find the right methods after going through the docs. I think the new methods made the code more concise; they accomplished some of the things I had been unsuccessfully trying to do in my attempts to establish an initial solution.

How did you initially iterate through the data structure?

I found that an each iterator was the best solution to iterate through the data structure after using reject to eliminate undesired values.

Do you feel your refactored solution is more readable than your initial solution? Why?

I do not think the refactored solution is quite as readable since it is more reliant on Ruby methods, which obscures the logic of the solution a bit.
=end