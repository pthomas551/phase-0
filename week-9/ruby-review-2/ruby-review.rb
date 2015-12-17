# Drawer Debugger

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.last) #what is `#pop` doing?
    if @contents.empty?
      puts "Nothing to remove"
    else
      @contents.delete_at(@contents.index(item))
    end
  end

  def dump # what should this method return?
    puts "Your drawer is empty."
    @contents = []
  end

  def view_contents
    if @contents.empty?
      puts "Drawer is empty"
    else
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
    end
  end

end

class Silverware
  attr_reader :type
  attr_reader :clean

# Are there any more methods needed in this class?\

  def initialize(type, clean = true)
  @type = type
  @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean = true
  end

end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")
spoon = Silverware.new("spoon")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
silverware_drawer.add_item(spoon)
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE
silverware_drawer.add_item(spoon)
silverware_drawer.add_item(spoon)
silverware_drawer.view_contents
silverware_drawer.remove_item
silverware_drawer.view_contents
silverware_drawer.remove_item
silverware_drawer.remove_item
silverware_drawer.remove_item
# Reflection
# What concepts did you review in this challenge?
# We went over error handling and class methods.
# It's not very confusing for the moment but there are always new methods to learn! I could still stand to learn more about the Enumerable object, though.
# What are you going to study to get more prepared for Phase 1?
# I'll do the other review challenges, go over our text books, and possibly do some Ruby/JS challenges on HackerRank.


