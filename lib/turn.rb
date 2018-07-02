def valid_move?(board, index)
  if index.between?(0,8) && !position_taken(board, index)
    true
  elsif position_taken?(board, index)
    false
  elsif index.between?(0,8) == false
    false
  else
    false
  end
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def input_to_index(input)
  index = input.to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, value = "X")
  valid_move?(board, index)
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    puts "Please enter 1-9:"
    index = gets.strip
  end
end
