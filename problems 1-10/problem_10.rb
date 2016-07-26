# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

#This is technically not cheating...
require 'prime'

prime_list = []
Prime.each(2_000_000) do |prime|
  prime_list << prime
end

p prime_list.inject(0) { |sum, num| sum += num}