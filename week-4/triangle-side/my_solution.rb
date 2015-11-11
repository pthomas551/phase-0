# I worked on this challenge [with: Bob Dorff].


# Your Solution Below


def valid_triangle?(a, b, c)
 if a==0 || b==0 || c==0
   return false
 elsif (a + b) < c
   return false
 elsif (b + c) < a
   return false
 elsif (c + a) < b
   return false
 elsif a==b || b==c || a==c
   return true
 elsif (a**2) + (b**2) == (c**2)
   return true
 elsif (c**2) + (b**2) == (a**2)
   return true
 elsif (a**2) + (c**2) == (b**2)
   return true
 else
   return false
 end
end