# The sum of the squares of the first ten natural numbers is,
# 1**2 + 2**2 + ... + 10**2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)**2 = 55**2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers 
# and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers 
# and the square of the sum.

#sum of the squares of the first 100 natural nums
sum_of_the_squares = (1..100).to_a.map { |n| n**2 }.inject {|result, num| result + num}

#square of the sum of first 100 natural nums
square_of_the_sum = (1..100).inject {|result, num| result + num} ** 2

p square_of_the_sum - sum_of_the_squares