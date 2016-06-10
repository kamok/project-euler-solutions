# A palindromic number reads the same both ways. 
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def calculate_max_palindrome(digits)
	def find_range_of_nums(digits)
		max_num = []
		digits.times do 
			max_num << "9"
		end
		@all_nums = (1..max_num.join.to_i).to_a.reverse
	end

	def is_number_palindromic?(num)
		num_in_array = num.to_s.split("")
		length_of_num = num_in_array.length

		mid = length_of_num/2 - 1
		left_side = num_in_array[0..mid]
		right_side = length_of_num.even? ? num_in_array[mid+1..-1] : num_in_array[mid+2..-1]

		left_side == right_side.reverse ? true : false 
	end

	find_range_of_nums(digits)

	@all_nums.each do |num|
    possible_solution = num * num                         #find highest palindromic that's composed of num * num
		break if is_number_palindromic?(possible_solution)
		@lower_bound = num
	end
	
	all_nums_above_lower_bound = @all_nums.reject { |x| @lower_bound >= x } 


	# @all_nums.each do |num|
	# 	num.times do 
	# 	p num
	# 	break if num == @lower_bound
	# # 	loop do 
	# # 		p possible_solution = num * num - index
	# # 		break if possible_solution < @lower_bound * @lower_bound
	# # 	end
	# end
  
	#999*998, 999*997, 999*996
	#998*997, 998*996... 998*@lower_bound
	#@lowerbound + 1 *


	# @upper_bound.each do 
end

calculate_max_palindrome(3)

#use num*num as a lower bound for all iterations of num * num - n