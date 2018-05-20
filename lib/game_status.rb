board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [2,4,6],
  [2,5,8],
  [3,4,5],
  [6,7,8]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
      # winner = "X"
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
      # winner = "O"
    else
      win_combination=0
    end
  end
    if win_combination=0
      return false
  end
end

def full?(board)
  if board.include? " "
    return false
  else
    return true
  end
end

def draw?(board)
  if won?(board)==false && full?(board)==true
    return true
  else
    return false
  end
end

def over?(board)
  if draw?(board)==true || won?(board)!=false
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    win_combination = won?(board)
    winner_winner_chicken_dinner = win_combination[0]
    if winner_winner_chicken_dinner == "X"
      return "X"
    else
      return "O"
    end
  end
end