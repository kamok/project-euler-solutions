#Problem 1: Multiples of 3 and 5

#first, we need to write a program that spits out natural numbers below 10 that are multiples of 3 or 5

array = (1..9).to_a                     #p = [1, 2, 3, 4, 5, 6, 7, 8, 9]
threes = []
fives = []

#if a number is cleanly divisible by 3 with no remainder, we add it to threes, and 5 to fives. Otherwise we leave it.

p1= array.each do |number|
      if (number%3)==0 
        threes.push (number)
      elsif (number%5)==0
        fives.push (number)
      end
    end
#threes = [3, 6, 9]
#fives = [5]

#then just add all the values in threes and fives | .inject adds up all values inside the array 
threes_sum = (threes.inject {|sum, n| sum + n})
fives_sum = (fives.inject {|sum, n| sum + n})
total = threes_sum+fives_sum     #18 + 5 = 23

#it works, so we can now move on to the real problem
#then just change the initial range of numbers in line 4 to a range from 1 to 1000

array = (1..999).to_a                     
threes = []                 
fives = []

p1 = array.each do |number|
  if number % 3 == 0 
    threes << (number)
  elsif number % 5 == 0
    fives << (number)
  end
end

combined = threes + fives

p combined.inject {|sum, n| sum + n})
