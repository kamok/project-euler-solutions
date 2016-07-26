# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a**2 + b**2 = c**2
# For example, 3**2 + 4**2 = 5**
             # 9    + 16   = 25 

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#a**2 + b**2 = c**2
# a + b + c = 1000

# say we break the 1000 into percentages [..25%...50%...75%...100%]
# a or b cannot exceed 50%. If a or b exceed 50%, then 50% + b != c. 
# As you cannot divide the remaining 50% between b and c

#Find all a, b pairs under 500 where a pythagorean triplet exist.
include Math

a = 1..500
b = 1..500

a.each do |a_num|
  b.each do |b_num|
    c_num = sqrt(a_num**2 + b_num**2)
    if c_num % 1 == 0 && a_num + b_num + c_num == 1000
      p a_num * b_num * c_num
    end
  end
end