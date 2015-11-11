# Calculate a Grade

# I worked on this challenge [with: Bob Dorff].


# Your Solution Below
def get_grade(avrge)
  if avrge >= 90
    return "A"
  elsif avrge >= 80
    return "B"
  elsif avrge >= 70
    return "C"
  elsif avrge >= 60
    return "D"
  else
    return "F"
  end
end

