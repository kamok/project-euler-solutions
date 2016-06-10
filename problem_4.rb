# A palindromic number reads the same both ways. 
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# NUMS = (1..999).to_a.reverse

# def calculate_palindromes(digits)
# 	upper_bound = []
# 	digits.times do 
# 		upper_bound << "9"
# 	end
# 	possible_digits = (1..upper_bound.join.to_i).to_a.reverse

# 	NUMS.each do |num|
# 		until palindromic? 
# 			@solution = num * num
# 		end
# 		p @solution
# 	end

	@solution = 1988891
	def palindromic?
		num = @solution.to_s.split("")
		length_of_solution = num.length

		mid = length_of_solution/2 - 1
		left_side = num[0..mid]
		right_side = length_of_solution.even? ? num[mid+1..-1] : num[mid+2..-1]
		p left_side
		p right_side 

	end
palindromic?
# end

# calculate_palindromes(3)






# If even, then we take .count/2. One half == other half
# If odd, then we take .count/2. Rounded down == rounded down + 2 