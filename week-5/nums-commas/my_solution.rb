# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

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
int = int.to_s.chars.each_slice(3).to_a.each {|a| if a.size == 3; a.push ',' end}
int.last.pop if int.last.include?(',')
int.join.reverse
end




# 3. Reflection