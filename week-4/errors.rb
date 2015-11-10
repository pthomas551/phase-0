# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end
#end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# Line 17.
# 6. Why did the interpreter give you this error?
# A second end was needed, the while loop was closed out but not the method.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# in `<main>': undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
# line 35
# 5. Why did the interpreter give you this error?
# Ruby doesn't know what south_park is, it hasn't been previously defined.  It needs to be defined as a method or a variable.

# --- error -------------------------------------------------------

#def cartman()
#end
# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# in `<main>': undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# Line 50.
# 5. Why did the interpreter give you this error?
# cartman has not been defined as a method. It needs a "def" in front of it and an "end" statement.

# --- error -------------------------------------------------------

# def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase': wrong number of arguments (1 for 0) errors.rb:69:in `<main>'
# 4. Where is the error in the code?
# errors.rb:69:in `<main>'
# 5. Why did the interpreter give you this error?
# cartmans_phrase isn't set up to take arguments. It would need an argument defined in the def statement.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 84
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartman_says': wrong number of arguments (0 for 1) from errors.rb:88:in `<main>'
# 4. Where is the error in the code?
# Line 88
# 5. Why did the interpreter give you this error?
# cartman_says was not given an argument when it needed one.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 105
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError)
# 4. Where is the error in the code?
# errors.rb:109:in `<main>'
# 5. Why did the interpreter give you this error?
# cartmans_lie was not given the sufficient number of arguments, it needed 2.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# in `*': String can't be coerced into Fixnum (TypeError) from errors.
# 4. Where is the error in the code?
# rb:124:in `<main>'
# 5. Why did the interpreter give you this error?
# You can't perform an arithmetic operation on a string

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# in `/': divided by 0 (ZeroDivisionError)
# 4. Where is the error in the code?
# errors.rb:139:in `<main>'
# 5. Why did the interpreter give you this error?
# There is division by zero in the statement and you can't divide by zero.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# in `require_relative': cannot load such file -- /Users/pthomas/DBC/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# errors.rb:155:in `<main>'
# 5. Why did the interpreter give you this error?
# The file cartmans_essay.md doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?

The first one, it was not an obvious error and the line number was confusing.

How did you figure out what the issue with the error was?

I couldn't at first, so I took a break and looked at the statement again then noticed that the function was not closed out with an end statement.

Were you able to determine why each error message happened based on the code?

Yes.

When you encounter errors in your future code, what process will you follow to help you debug?

The error messages are a helpful start, but if the error isn't obvious from that it can also be useful to take a break or bring in a colleague to take a look.

=end