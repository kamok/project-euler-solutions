# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

# Below solution took 27 seconds.
# def sequence(num)
#   copy = num
#   counter = 1
#   loop do
#     if num.even? == true
#       num /= 2
#     else
#       num = (num * 3) + 1
#     end
#     counter += 1
#     break if num == 1
#   end
#   {copy => counter}
# end
# one_million_tries = {}
# (1..1_000_000).to_enum.each do |num|
#   hash = sequence(num)
#   one_million_tries[hash.keys[0]] = hash.values[0]
#   puts hash
# end
# p one_million_tries.max_by { |k,v| v}

# One way to still use brute force is by NOT saving the big ass 1 million value dictionary. 
# Only instansiate one chain at a time, and check the count of the chain against each other.
# Keep highest one, return the first number of the chain that remains 
# 
solution = []
(1..1_000_000).to_enum.each do |num|
  current_chain = []
  until num <= 1
    current_chain << num
    num = num.even? ? num / 2 : (num * 3 ) + 1
  end 
  solution = current_chain if current_chain.length > solution.length
end
puts solution.first