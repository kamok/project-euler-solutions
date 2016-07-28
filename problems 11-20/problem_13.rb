# # Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

# array_of_nums = []
# File.open("problem_13_data.txt", "r") do |f|
#   f.each_line do |line|
#     array_of_nums << line.strip.split('').map(&:to_i)
#   end
# end

# columns_of_numbers = array_of_nums.transpose

# result = [].tap do |result|
#   columns_of_numbers.each do |numbers|
#     result << numbers.inject(0) { |sum, num| sum + num }
#   end
# end

# p result

# a = [7491,3156,6219,6159,6065,1569,6169,9879,6299,2688,1689,1068,1899,9999,9991,9999] #90339
# p a.inject(:+)
# b = a.map {|num| num.to_s.split("")}.transpose.each { |set| set.map!(&:to_i) }
# c = []
# b = b.each {|set| c << set.inject(:+)} # c = [82, 71, 112, 119]

# [8,2,71,112,119]
# [8,9,1,112,119]
# [9,0,2,2,119]
# [9,0,3,3,9]
