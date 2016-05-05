#Problem 2: Even Fibonacci numbers

#first, let's find up to which fib number is <= 4m
def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end
#35 = 9 227 465
#34 = 5 702 887
#So I want to put every single fib value up to 34 in an array

def fibs_array (n)
  array = []
  while n > 1
    array.push(fibonacci(n))
    n -= 1 
  end
  return array
end




#fibs_array (34) = [5702887, 3524578, 2178309, 1346269, 832040, 514229, 317811, 196418, 121393, 75025, 46368, 28657, 17711, 10946, 6765, 4181, 2584, 1597, 987, 610, 377, 233, 144, 89, 55, 34, 21, 13, 8, 5, 3, 2, 1]
evens = []
fibs_array(34).each do |number|
  if (number%2) == 0
    evens.push (number)
  else
  end
end
# p evens [3524578, 832040, 196418, 46368, 10946, 2584, 610, 144, 34, 8, 2]

evens_sum =(evens.inject {|sum, n| sum + n})
p evens_sum
