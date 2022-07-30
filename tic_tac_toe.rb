class Player
    def initialize(name, game_marker)
      @name = name
      @game_marker = game_marker
    end
  end
    
  class Board
    attr_accessor :board_display
    
    def initialize
      @board_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      @board_display = '
                         1 | 2 | 3
                        ---+---+---
                         4 | 5 | 6
                        ---+---+---
                         7 | 8 | 9 '.chars
    end
  end
  
  new_board = Board.new
  
  new_board.board_display
  
  player_symbol = gets.chomp
  player_input = gets.chomp
  p player_input
  bb = new_board.board_display.map do |number|
    if number == '1' && number == player_input
      number = player_symbol
    elsif number == '2' && number == player_input
      number = 'X'
    elsif number == '3' && number == player_input
      number = 'X'
    elsif number == '4' && number == player_input
      number = 'X'
    elsif number == '5' && number == player_input
      number = 'X'  
    elsif number == '6' && number == player_input
      number = 'X'
    elsif number == '7' && number == player_input
      number = 'X'
    elsif number == '8' && number == player_input
      number = 'X'  
    elsif number == '9' && number == player_input
      number = 'X'  
    else  
      number = number
    end
  end
  
  p bb
  
  puts bb.join
  
  #def game
  #each {||
  #    { horizontal_one_thru_three: [1, 2, 3], 
  #      horizontal_four_thru_six: [4, 5, 6], 
  #      horizontal_seven_thru_nine:[7, 8, 9],
  #      vertical_one_thru_seven: [1, 4, 7], 
  #      vertical_two_thru_eight: [2, 5 , 8], 
  #      vertical_three_thru_nine: [3, 6, 9],
  #      diagonal_one_thru_nine: [1, 5, 9], 
  #      diagonal_three_thru_seven:[3, 5, 7]
  #    } 
  # }  
  #end