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

def triplet(sum)
  a = (sum*0.20).to_i..(sum/2)    #I don't know why the lower bound is 20% of sum. =(
  b = a
  catch (:found) do
    a.each do |a_num|
      b.each do |b_num|
        c_num = sqrt(a_num**2 + b_num**2)
        if c_num % 1 == 0 && a_num + b_num + c_num == sum
          puts "a:#{a_num}, b:#{b_num}, c:#{c_num.to_i}"
          p a_num * b_num * c_num
          throw :found
        end
      end
    end
  end
end

triplet(1000)