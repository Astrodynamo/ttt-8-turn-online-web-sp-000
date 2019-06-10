def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?
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

def move

end

