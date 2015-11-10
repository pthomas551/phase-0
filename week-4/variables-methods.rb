# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
print "First name? "
first = gets.chomp
print "Middle name? "
middle = gets.chomp
print "Last name? "
last = gets.chomp

puts "Hello, " + first + middle + last

# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

print "What's your favorite number? "
favnum = gets.chomp
betternum = favnum.to_i + 1
print "I think " + betternum.to_s + " is better"

=begin

Exercise solutions:
https://github.com/pthomas551/phase-0/tree/master/week-4/address
https://github.com/pthomas551/phase-0/tree/master/week-4/math

How do you define a local variable?

A local variable can be easily defined by using the = operator, eg. my_string = "foo".

How do you define a method?

A method can be defined in two ways:
def method-name(var1, var2...)
def method-name var1, var2...

What is the difference between a local variable and a method?

A local variable stores data of one type or another. A method is a block of code that accepts variables as input.

How do you run a ruby program from the command line?

ruby program-name.rb

How do you run an RSpec file from the command line?

rspec spec-file-name.spec

What was confusing about this material? What made sense?

This wasn't too confusing but it was helpful to have a review of how Ruby treats various types of variables and the methods to make them work together properly.

=end
