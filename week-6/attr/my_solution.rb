#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: name
# Output: display a salutation to the console with NameData
# Steps:
# NameData will initialize a @name variable with your name.
# Greetings will initialize an instance of NameData
# and include a method to display a salutation to the console.


class NameData
attr_reader :name
  def initialize
    @name = 'Phil'
  end
end


class Greetings
  def initialize
    @my_name = NameData.new
  end

  def display
  puts 'Hi, ' + @my_name.name
  end
end

greet = Greetings.new
greet.display

# Reflection
=begin
What are these methods doing?
They are creating, displaying, and modifying a profile class.

How are they modifying or returning the value of instance variables?
They have separate methods to return each instance variable and modify each variable by passing in an argument.
--Release 2
What changed between the last release and this release?

An attr_reader attribute was set up for the @age instance variable.

What was replaced?

The what_is_age method was replaced.

Is this code simpler than the last?

Yes, it replaced a 3 line method with two words.
--Release 3
What changed between the last release and this release?

An attr_writer attribute was set up for the @age instance variable.

What was replaced?

The change_my_age method was replaced.

Is this code simpler than the last?

Yes, we removed an unnecessary method and eliminated the need to call a method to change @age.

--Release 5
What is a reader method?

A reader method lets you read an instance variable from a class instance.

What is a writer method?

A reader method lets you modify an instance variable from a class instance.

What do the attr methods do for you?

They let you set up basic read/write methods for a class with a minimum of extra code.

Should you always use an accessor to cover your bases? Why or why not?

No, an accessor can lead to debugging and security issues, so it's better just to define the attr methods that you need.

What is confusing to you about these methods?

They aren't that confusing but I needed some time to figure how to interact with them outside the class.

=end