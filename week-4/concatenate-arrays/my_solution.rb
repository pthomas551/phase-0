# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)

  if array_1 == nil && array_2 == nil
    return nil
  elsif array_1 == nil
    return array_2
  elsif array_2 == nil
    return array_1
  else
    concat = Array.new
    array_1.each { |e| concat << e  }
    array_2.each { |e| concat << e  }
    return concat
  end

end
