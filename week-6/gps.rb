# Your Names
# 1) Phil Thomas
# 2)

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item, quantity_ordered)
  #set foods of possible items to make
  foods = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # raise error if there is invalid input
  if foods.include?(item) == false
    raise ArgumentError.new("#{item} is not a valid input")
  elsif quantity_ordered < 1
    raise ArgumentError.new('Cant have less than 1 ordered')
  end
  # access serving size for selected item
  number_ingredients = foods[item]
  # check if the quantity of ingredients needed is divisible by the number of avail ingredients, return output based on result of quantity_ordered % number_ingredients calculation
  available_items = quantity_ordered/number_ingredients
  leftover = quantity_ordered % number_ingredients
  result = "Calculations complete: Make #{available_items} of #{item}. "
  leftover_statement = "You have #{leftover} leftover ingredients."
  if leftover == 0; return result
    # if # of ingredients needed is divisible by avail ingredients: say make X of needed item

  # else if there is 5 leftover, make 5 of cake
  # else if there is still more leftover, make 1 of cookie

  else
    result = result + leftover_statement
    if leftover == 5 || leftover == 6
      result = result + " We recommend making 1 cake."
      leftover -= 5
    result = result + "and #{leftover} cookies." if leftover > 0
    else
    result = result + " We recommend making #{leftover} cookies."
    end
  return result
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("pie", 20)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

Having readable code is critical in order to make sure your software can be maintained properly by future developers.

Did you learn any new methods? What did you learn about them?

I did not learn any new methods but it was good to get more practice with modulo and string manipulation.

What did you learn about accessing data in hashes?

When accessing data from a hash it's important to give your resulting variables an intuitive name so others can understand how you are using the data accessed.

What concepts were solidified when working through this challenge?

It was good to learn more about string manipulation and best practices for refactoring.

=end