def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  return true if index.between?(0, 8) && position_taken?(board, index) == false
end

def position_taken? (board, index)
  return false if board[index] == " " || board[index] == "" || board[index] == nil
  true
end

def input_to_index(input)
  input = input.to_i - 1
  input
end

def move (board, index, character = "X")
  board[index] = character
end

def turn (input)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  while valid_move?(board, index)
    move(board, index, character)
    
  end
end
  