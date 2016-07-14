#Write a sudoku solver. Use it to solve 50 puzzles. 
#Store the first 3 cell values of and add them up

puzzles = File.open('p096_sudoku.txt', 'r')
pile_of_puzzles = puzzles.read
puzzles.close

pile_of_puzzles = pile_of_puzzles.split("Grid").delete_if { |char| char == "" }
pile_of_puzzles.each do |puzzle|
	puzzle.gsub!(/[^0-9A-Za-z]/, '')
	puzzle[0..1] = ""
end

require_relative 'solver/sudoku_solver.rb'

array_of_solved_puzzles = []
pile_of_puzzles.each_with_index do |puzzle, index|
	a = Sudoku.new
	a.set_game(puzzle)
	array_of_solved_puzzles << a.solve
end

first_3_nums = []
array_of_solved_puzzles.each do |solved|
	first_3_nums << solved[0..2].to_i
end

p first_3_nums.inject(0){|sum,next_num| sum + next_num }