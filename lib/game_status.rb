# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board_array = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
  ]
  
  def won?(board_array)
  WIN_COMBINATIONS.each do |combo_arr|
    first_index = combo_arr[0]
    second_index = combo_arr[1]
    third_index = combo_arr[2]
   

    position_1 = board[first_index]
    position_2 = board[second_index]
    position_3 = board[third_index]
   
    
    if position_1 == position_2 && position_2 ==position_3 && position_1 != " "
      return combo_arr

    end
  end
    
     return FALSE


  end

  