# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  list_of_words.uniq!
  if list_of_words.size == 0
    return nil
  elsif list_of_words.size == 1
    return list_of_words.first
  else
    while list_of_words.size > 1
      if list_of_words.first.length <= list_of_words.last.length
        list_of_words.shift
      else
        list_of_words.pop
      end
    end
    return list_of_words.first
  end
end