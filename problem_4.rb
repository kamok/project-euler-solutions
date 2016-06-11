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

	possible_solution = 1
	until all_nums_above_lower_bound.empty?
		length = all_nums_above_lower_bound.length - 1
		length.times do |count|
			product = all_nums_above_lower_bound[0] * all_nums_above_lower_bound[count + 1]
			if is_number_palindromic?(product)
				@solution = product
				break
			end
		end
		all_nums_above_lower_bound.shift
		break if @solution != nil
	end

	if digits == 1
		puts "There ain't a palindrome that you can form with multiplyig single digit numbers."
	else
		p @solution if @solution > @lower_bound**2
		p @lower_bound if @lower_bound > @solution
	end
	
end

calculate_max_palindrome(5)

#use num*num as a lower bound for all iterations of num * num - n
