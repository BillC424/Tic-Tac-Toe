class Player
    attr_accessor :name, :player_symbol
    
    def initialize(name, player_symbol)
      @name = name
      @player_symbol = player_symbol
      
    end
  end
    
  class Board
    attr_accessor :board_display
    
    def initialize
      @board_display = '
                         1 | 2 | 3
                        ---+---+---
                         4 | 5 | 6
                        ---+---+---
                         7 | 8 | 9 '.chars
    end
  end
  
  new_board = Board.new
  
  ##Code for creating two players
  puts "What is your the name of the first player?"
  p1_name = gets.chomp
  puts "Please choose X or O for your game marker"
  p1_symbol = gets.chomp
  p1 = Player.new(p1_name, p1_symbol)
  
  puts "What is your the name of the second player?"
  p2_name = gets.chomp
  puts "Please choose X or O for your game marker"
  p2_symbol = gets.chomp
  p2 = Player.new(p2_name, p2_symbol)
  
  
  puts new_board.board_display.join
  
  def play_round(board, player)
  puts "Choose a square for your turn"
  player_input = gets.chomp
  
  board.board_display = board.board_display.map do |number|
    if number == '1' && number == player_input
      number = player.player_symbol
    elsif number == '2' && number == player_input
      number = player.player_symbol
    elsif number == '3' && number == player_input
      number = player.player_symbol
    elsif number == '4' && number == player_input
      number = player.player_symbol
    elsif number == '5' && number == player_input
      number = player.player_symbol
    elsif number == '6' && number == player_input
      number = player.player_symbol
    elsif number == '7' && number == player_input
      number = player.player_symbol
    elsif number == '8' && number == player_input
      number = player.player_symbol
    elsif number == '9' && number == player_input
      number = player.player_symbol
    else  
      number = number
    end
  end
  
  puts board.board_display.join
  
  end
  play_round(new_board, p1)
  play_round(new_board, p2)
  
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