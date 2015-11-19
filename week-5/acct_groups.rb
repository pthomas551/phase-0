people = ['Jack Abernethy','Mohammad Amin','Zollie Barnes','Reuben Brandt','Dana Breen','Breton Burnett','Saundra Vanessa Castaneda','Luis De Castro','Nicolette Chambers','Kerry Choy','Rick Davies','Katherine DiAngelo','Adrian Diaz','David Diaz','Bob Dorff','Michael Du','Paul Dynowski','Jenna Espezua','Sean Fleming','Jennifer Gilbert','Marcel Haesok','Albert Hahn','Arthur Head','Jonathan Huang','Thomas Huang','Alex Jamar','Kevin Jones','Steven Jones','Coleby Kent','Caroline Kenworthy','Calvin Lang','Yi Lu','David Ma','Charlotte Manetta','Sean Massih','Tom McHenry','Alex Mitzman','Lydia Nash','Brenda Nguyen','Matthew Oppenheimer''Mason Pierce','Joe Plonsker','Mira Scarvalone','Joseph Scott','Chris Shahin','Benjamin Shpringer','Lindsey Stevenson','Philip Thomas','Gary Tso','Ting Wang','Monique Williamson','Regina Wong','Hanah Yendler']
#Pseudocode
=begin
if the number in people is not divisible by 4 or 5
split off last 3 people into separate array and run tests again

if the number in people is divisible by 4 or 5
split the array up into separate arrays of 4 or 5

create a hash w/ group number as key and store array of group members as value

return hash

=end