board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def input_to_index(user_input)
  user_input.to_i - 1
end

def turn_count(board)
  board.each do |turn|
    user_input = gets.strip
    index = input_to_index(user_input)
    counter = 0
    if board[index] == "X" || board[index] == "O"
      counter += 1
    end
  end
end

def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end
