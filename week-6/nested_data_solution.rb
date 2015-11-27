# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.is_a? Array
    element.map! {|x| x + 5}
  else
    element + 5
  end
end
puts number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
def startup_name_gen!(array)
  array.map! do |e|
    if e.is_a? Array
      startup_name_gen!(e)
    else
      e + 'ly'
    end
  end
end
puts startup_name_gen!(startup_names)

# reflection
=begin
What are some general rules you can apply to nested arrays?

A nested array can be accessed using the index values in succession like so: [0][1].

What are some ways you can iterate over nested arrays?

A nested array can be iterated over using nested iterators or recursion.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

Yes, I used recursion for the bonus challenge because it reduced the need for extra code. I also used the #map! method, which I have not used to date, because it allowed for modifying an array in place.

=end