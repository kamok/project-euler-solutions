# In the 20×20 grid below, four numbers along a diagonal line have been marked in red.

a= '08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
    49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
    81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
    52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
    22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
    24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
    32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
    67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
    24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
    21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
    78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
    16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
    86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
    19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
    04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
    88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
    04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
    20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
    20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
    01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48'.split(" ").map(&:to_i)

# The product of these numbers is 26 × 63 × 78 × 14 = 1788696.
# What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?

a_nested = a.each_slice(20).to_a

def find_sets(structure_set)
  [].tap do |result|
    structure_set.each do |structure|
      result << structure.each_cons(4).to_a
    end
  end.flatten(1)
end

row_array = find_sets(a_nested)
column_array = find_sets(a_nested.transpose)

l_diagonal_array =          # The middle diagonal is repeated twice.                    
[].tap do |result|          # I once thought about using .uniq but it doesn't really matter so I took it out.
  17.times.with_index do |n|
    result << (0..n+3).collect { |i| a_nested[i+16-n][i]}
  end
  17.times.with_index do |n|
    result << (0..19-n).collect { |i| a_nested[i][i+n]}
  end
end 

r_diagonal_array =          # Same here.
[].tap do |result|
  17.times.with_index do |n|
    result << (0..n+3).collect { |i| a_nested.map(&:reverse)[i+16-n][i]}
  end
  17.times.with_index do |n|
    result << (0..19-n).collect { |i| a_nested.map(&:reverse)[i][i+n]}
  end
end

diagonal_array = find_sets(l_diagonal_array + r_diagonal_array )

## finds max
p (row_array + column_array + diagonal_array).map { |set| set.inject(:*) }.max


#This is a method I wrote before I remember I used .each_cons() before and it does the same thing that I do.

# def ordered_permutations(array: [1,2,3], length: n) #takes in an array and a number and finds all permutations without disturbing the order
#   array = array.dup #so you don't change state of the original array                                   
#   [].tap do |result|
#     (array.count - (length - 1)).times do
#       result << array[0..(length-1)]
#       array.shift
#     end
#   end
# end
# row_array = ordered_permutations(array: a, length: 4)

#This is a method I wrote before I learned about .transpose
# def get_array_as_columns(array)
#    n = 0
#   [].tap do |result| 
#     20.times do 
#       result << [ array[n], array[n+20], array[n+40], array[n+60], array[n+80],
#                   array[n+100], array[n+120], array[n+140], array[n+160], array[n+180],
#                   array[n+200], array[n+220], array[n+240], array[n+260], array[n+280],
#                   array[n+300], array[n+320], array[n+340], array[n+360], array[n+380]]
#       n += 1 
#     end
#   end
# end
# column_array = get_array_as_columns(a).flatten.each_cons(4).to_a
