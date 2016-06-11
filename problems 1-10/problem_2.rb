#Problem 2: Even Fibonacci numbers
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
#find the sum of the even-valued terms.

#first, let's find up to which fib number is <= 4m
# ||= means if a is undefined then assign it the value of b, otherwise leave it alone
def fib(n, cache = {})
  if n == 0 || n == 1
    return n
  end
  cache[n] ||= fib(n-1, cache) + fib(n-2, cache)
end
#35 = 9 227 465
#34 = 5 702 887
#So I want to put every single fib value up to 33 in an array

def fibs_array (n)
  array = []
  while n > 1
    array << fib(n)
    n -= 1 
  end
  array
end

evens = []
fibs_array(33).each do |number|
  if ( number % 2 ) == 0
    evens << number
  end
end

#evens = [3524578, 832040, 196418, 46368, 10946, 2584, 610, 144, 34, 8, 2]

p evens_sum = evens.inject {|sum, n| sum + n}


