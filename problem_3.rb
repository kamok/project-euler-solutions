require 'prime'

def calculate_prime_factors_of(number)
  small_primes = Prime.first(1000)

  prime_factors = []
  
  until number == 1  
    small_primes.each do |prime|
      if number % prime == 0
        prime_factors << prime 
        number /= prime
      end
    end
  end
  p prime_factors
end

calculate_prime_factors_of(600851475143)