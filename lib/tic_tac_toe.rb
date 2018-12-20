# Helper Method

 board = ["X", "X", "X", "X", "O", "O", "X", "O", "O"]


puts(board[2])



def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
puts position_taken?(board, 2)
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], 
  [3,4,5], 
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo| 
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[2]
    
    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3
    
    
    
  if (position_1 == "X" && position_2 == "X" && position_3 == "X")||(position_1 == "O" && position_2 == "O" && position_3 == "O")
    return combo # return the win_combination indexes that won.
  
  
  else
     false
  end
  
  def full?(board)
    
    board.each do |check|
      if (check != "X") && (check != "O")
        return false
      end
      true
    end
  end
  
end
  false
end


def draw?(board)
  if full?(board) && !won?(board)
    return true
 else 
   return false
 end
  
end  
  
def over?(board)
  if draw?(board) || won?(board) || won?(board)
    return true
  else 
    return false
  end
end

def winner(board)
  #if WIN_COMBINATIONS = won?(board)
    
    win = won?(board)
    
    if win
      choice = win[0]
    end
    if won?(board)
      return board[choice]
    #elsif won?(board)==nil
      # return nil
    #else
    
    end
  return nil
end


def turn_count(board)
  counter = 0
 board.each do|choice|
  
    if choice == "X" || choice == "O"
       counter += 1
    end
   
   
   
  end
  return counter 
end

def current_player(board)
  
  if turn_count(board) % 2 == 0
    return "X"
    else 
     return "O"
  end
  
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player)
  board[index] = current_player
  
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
 puts "Please enter 1-9:"
 input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    x = current_player(board)
    move(board, index, x )
    display_board(board)
  else
    #puts 'try again'#
    turn(board)
  end
 # display_board(board)#
end
########################################################################
#def play(board)
# i = 0
#  while i < 9 do
#  turn(board)
 # i += 1
 #end
   # if winner(board)
   # puts "Congratulations!"
  #elsif draw?(board)
   # puts "Draw!"
    # return nil
 # end
#end
##########################################################
def play(board)
  puts board
 i = 0
   while i < 9 do
  turn(board)
      if winner(board)
       puts "Congratulations!"
      elsif draw?(board)
        puts "Draw!"
      else
       return nil
 end
 over?(board)
  i += 1
end

end
  






















