def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, pos, char = "X")
  board[pos] = char
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index >= 0 && index <= 8
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  index = input_to_index(pos)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
