#GPS2.2 Phil Thomas
=begin
Reflection
What did you learn about pseudocode from working on this challenge?
  Pseudocode is really helpful for sketching out a plan of action before diving into coding, especially when working with a partner.

What are the tradeoffs of using Arrays and Hashes for this challenge?
  An array is a little simpler from a conceptual perspective but makes it harder to track the relationship between item and quantity.

What does a method return?
  A method returns the last evaluated statement or whatever you direct it to return to the console via the return method.
What kind of things can you pass into methods as arguments?
  You can pass almost anything into a method as an argument, including integers, strings, arrays, and hashes.
How can you pass information between methods?
  Information can be passed between methods by using variables that exist outside the method.
What concepts were solidified in this challenge, and what concepts are still confusing?
  It was helpful to get a better understanding of variable scope, as well as how to manipulate hashes. I could still use more practice in passing data between methods, though.

=end

=begin
Create a new list
Add item w/ quantity to list
Remove item from list
Update quantities for items
Print the list



# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# 1. Intialize hash, set default quantity: 1
# print the list to the console [can you use one of your other methods here?]
# output: Hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: 1. Get item information (name, quantity)
2. Store to hash
# output: Updated hash

# Method to remove an item from the list
# input: Item name
# steps: Remove item from hash
# output: Updated hash

# Method to update the quantity of an item
# input: Item name, updated quantity
# steps: Locate item_name, change quantity
# output: Updated hash

# Method to print a list and make it look pretty
# input: Hash
# steps: Print to console, w/ formatting
# output: Text interpolated into string
=end

# list = {}

# def create_list(items_list, list, quantity=1)
#   items_list.split(' ').each do |item|
#     list[item] = quantity
#   end
# end

def add_item(item_name, grocery_list, quantity = 1)
  grocery_list[item_name] = quantity
end

def create_list(items_list)
  items = items_list.split(" ")
#   grocery_list = Hash.new

#     items.each do |item|
#       add_item(item, grocery_list)
  #     end
#   return grocery_list


  items.each_with_object({}) do |item, grocery_list|
    add_item(item, grocery_list)
  end
end

list = create_list("Apples Milk Pears")



add_item('beer', list)
p list

def remove_item(item_name, grocery_list)
  grocery_list.delete(item_name)
end

remove_item('beer', list)
p list

def update_quantity(item_name, grocery_list, quantity)
  existing_quantity = grocery_list[item_name]
  new_quantity = existing_quantity + quantity
    if new_quantity <= 0
    remove_item(item_name, grocery_list)
    else
    grocery_list[item_name] = new_quantity
    end
end

update_quantity('Apples', list, 5)
p list
update_quantity('Apples', list, -7)
p list

def print_list(list_name)
  list_name.each { |i,q| puts "You need #{q} of #{i}." }
end
print_list(list)

=begin
def create_list(items_list, quantity = 1)
  items = items_list.split(" ")
  grocery_list = Hash.new

    items.each do |item|
    grocery_list[item] = quantity
    end
  return grocery_list
end

list = create_list("Apples Milk Pears")

def add_item(item_name, grocery_list, quantity = 1)
  grocery_list[item_name] = quantity
end

add_item('beer', list)
p list

def remove_item(item_name, grocery_list)
  grocery_list.delete(item_name)
end

remove_item('beer', list)
p list

def update_quantity(item_name, grocery_list, quantity)
  existing_quantity = grocery_list[item_name]
  new_quantity = existing_quantity + quantity
  if new_quantity <= 0
    remove_item(item_name, grocery_list)
  else
    grocery_list[item_name] = new_quantity
  end
end

update_quantity('Apples', list, 5)
p list
update_quantity('Apples', list, -7)
p list

def print_list(list_name)
  list_name.each do |i,q|
    puts "You need #{q} of #{i}."
  end
end
print_list(list)
=end