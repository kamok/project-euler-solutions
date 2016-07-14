# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a**2 + b**2 = c**2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

#a**2 + b**2 = c**2
# a + b + c = 1000

# say we break the 1000 into percentages [..25%...50%...75%...100%]
# a or b cannot exceed 50%. If a or b exceed 50%, then 50% + b != c. 
# As you cannot divide the remaining 50% between b and c

#Find all a,b pairs under 500 where a pythagorean triplet exist.

            class GF  
 def initialize  
  puts 'In GF class'  
 end  
 def gfmethod  
  puts 'GF method call'  
 end  
end  
  
# class F sub-class of GF  
class F < GF  
 def initialize  
  puts 'In F class'  
 end

def gfmethod
	puts 'F method call'
end  
end  
  
# class S sub-class of F  
class S < F  
 def initialize  
  puts 'In S class'  
 end  
end  
son = S.new  
son.gfmethod  
