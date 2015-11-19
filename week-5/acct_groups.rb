#reflection
=begin
What was the most interesting and most difficult part of this challenge?

It was interesting to get more experience with hash manipulation. I didn't find the challenge that difficult overall, probably the part that took the most work was figuring out the correct syntax to achieve the desired result with the array.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, my pseudocode more or less worked on the first go this time now that I have a better idea of Ruby's capabilities.

Was your approach for automating this task a good solution? What could have made it even better?

Yes, it was a good solution although I think a more elegant solution would get rid of the group number iterator variable and allow for variance in group sizes between 4 and 5.

What data structure did you decide to store the accountability groups in and why?

I used a hash since each group has a unique numerical identifier.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I got more practice at making my code more compact and learned how to use the join method to get cleaner output of an array of strings. I also learned how to use the shuffle method to randomize the order of an array.

=end

#Pseudocode
=begin
Randomize people array

create a hash w/ group number as key and store array of group members as value

until the number in people is divisible by 4 or 5
split off last 3 people into new hash value

if the number of people is divisible by 4
split the array up into separate arrays of 4 and add each to hash

ditto if number is divisible by 5

printout group assignments

=end
dbcpeople = ['Jack Abernethy','Mohammad Amin','Zollie Barnes','Reuben Brandt','Dana Breen','Breton Burnett','Saundra Vanessa Castaneda','Luis De Castro','Nicolette Chambers','Kerry Choy','Rick Davies','Katherine DiAngelo','Adrian Diaz','David Diaz','Bob Dorff','Michael Du','Paul Dynowski','Jenna Espezua','Sean Fleming','Jennifer Gilbert','Marcel Haesok','Albert Hahn','Arthur Head','Jonathan Huang','Thomas Huang','Alex Jamar','Kevin Jones','Steven Jones','Coleby Kent','Caroline Kenworthy','Calvin Lang','Yi Lu','David Ma','Charlotte Manetta','Sean Massih','Tom McHenry','Alex Mitzman','Lydia Nash','Brenda Nguyen','Matthew Oppenheimer','Mason Pierce','Joe Plonsker','Mira Scarvalone','Joseph Scott','Chris Shahin','Benjamin Shpringer','Lindsey Stevenson','Philip Thomas','Gary Tso','Ting Wang','Monique Williamson','Regina Wong','Hanah Yendler']
dbcgroups = Hash.new

#initial
=begin
def acct_groups(people, groups)

people.shuffle!
groupnum = 1

until people.size % 4 == 0 || people.size % 5 == 0
groups[groupnum] = people.pop(3)
groupnum += 1
end

if people.size % 4 == 0
people.each_slice(4) do |p|
  groups[groupnum] = p
  groupnum += 1
end

elsif people.size % 5 == 0
people.each_slice(5) do |p|
  groups[groupnum] = p
  groupnum += 1
end

end
groups.each { |k,v| puts "Group #{k}: #{v}" }

end
acct_groups(dbcpeople,dbcgroups)
=end
#refactored


def acct_groups(people, groups)
# shuffle people array and intialize group numbering
people.shuffle!
groupnum = 1
# split off groups of 3 until we can fit everyone else in equally sized groups of 4 or 5
until people.size % 4 == 0 || people.size % 5 == 0
groups[groupnum] = people.pop(3)
groupnum += 1
end
# split people off into equally sized groups of 4 or 5
if people.size % 4 == 0
people.each_slice(4) { |p| groups[groupnum] = p; groupnum += 1 }

elsif people.size % 5 == 0
people.each_slice(5) { |p| groups[groupnum] = p; groupnum += 1 }
end
# print out nicely formatted group assignments
groups.each { |k,v| puts 'Group ' + k.to_s + ': ' + v.join(', ') }
end

acct_groups(dbcpeople,dbcgroups)