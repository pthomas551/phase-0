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