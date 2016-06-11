# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

### So...I found out you can do
# (1..20).to_a.reduce(:lcm) to get the answer as ruby as a built in LCM method.
# I ended up writing a method that removes internal multiples instead.
# Eg, if given a = [1,2,3,4,5]
# clean_range(a) => [3,4,5] because 
#1 can divide evenly into everything and 2 can divide into 4 evenly

def calculate_smallest_multiple(range)
	def clean_range(array)
		array.delete(1)                      #We always remove 1, because it's a multiple of everything
		@array_to_clean = array.reverse

		numbers_to_remove = []
		@array_to_clean.each do |num|
			length = @array_to_clean.length - 1
			length.times do |n|
				break if @array_to_clean[n + 1] == nil
				if @array_to_clean[0] % @array_to_clean[n + 1] == 0
				 	numbers_to_remove << @array_to_clean[n + 1]
				 	@array_to_clean.delete(@array_to_clean[n + 1])
				end
			end
			@array_to_clean.shift
		end
	  array = array - numbers_to_remove.uniq
	  find_least_common_multiple(array)
	end

	def find_least_common_multiple(nums)
		nums.reduce(:lcm)
	end

	clean_range(range.to_a)
end

p calculate_smallest_multiple(1..20)