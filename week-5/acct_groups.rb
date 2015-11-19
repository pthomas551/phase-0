#Pseudocode
=begin
Randomize people array

create a hash w/ group number as key and store array of group members as value

until the number in people is divisible by 4 or 5
split off last 3 people into new hash value

if the number of people is divisible by 4
split the array up into separate arrays of 4 and add each to hash

ditto if number is divisible by 5



return hash

=end
dbcpeople = ['Jack Abernethy','Mohammad Amin','Zollie Barnes','Reuben Brandt','Dana Breen','Breton Burnett','Saundra Vanessa Castaneda','Luis De Castro','Nicolette Chambers','Kerry Choy','Rick Davies','Katherine DiAngelo','Adrian Diaz','David Diaz','Bob Dorff','Michael Du','Paul Dynowski','Jenna Espezua','Sean Fleming','Jennifer Gilbert','Marcel Haesok','Albert Hahn','Arthur Head','Jonathan Huang','Thomas Huang','Alex Jamar','Kevin Jones','Steven Jones','Coleby Kent','Caroline Kenworthy','Calvin Lang','Yi Lu','David Ma','Charlotte Manetta','Sean Massih','Tom McHenry','Alex Mitzman','Lydia Nash','Brenda Nguyen','Matthew Oppenheimer','Mason Pierce','Joe Plonsker','Mira Scarvalone','Joseph Scott','Chris Shahin','Benjamin Shpringer','Lindsey Stevenson','Philip Thomas','Gary Tso','Ting Wang','Monique Williamson','Regina Wong','Hanah Yendler']
dbcgroups = Hash.new

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