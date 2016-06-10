require 'pry'
# p [1, 2, 3, 4].inject { |result, element| result + element }
hash = [[:first_name, 'Shane'], [:last_name, 'Harvie']].inject({}) do |result, element|
	binding.pry
  result[element.first] = element.last
  result
end