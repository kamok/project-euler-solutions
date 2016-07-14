#Write a sudoku solver. Use it to solve 50 puzzles. 
#Store the first 3 cell values of and add them up

require_relative 'solver/sudoku_solver.rb'
require "active_support/all"

puzzles = File.open('p096_sudoku.txt', 'r')
pile_of_puzzles = puzzles.read
puzzles.close

pile_of_puzzles = pile_of_puzzles.split("Grid").delete_if { |char| char == "" }
pile_of_puzzles.each do |puzzle|
	puzzle.gsub!(/[^0-9A-Za-z]/, '')
	puzzle[0..1] = ""
end

solved_puzzles = []
a = Sudoku.new
pile_of_puzzles.each_with_index do |puzzle, index|
	a.set_game(puzzle)
	solved_puzzles << a.solve
	p "Solving puzzle #{index+1}"
end

p solved_puzzles.map { |solved| solved[0..2].to_i }.sum