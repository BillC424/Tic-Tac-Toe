class Player
    attr_accessor :name, :player_symbol, :numbers_chosen
    
    def initialize(name, player_symbol)
      @name = name
      @player_symbol = player_symbol
      @numbers_chosen = {
        horizontal_123: [], 
        horizontal_456: [], 
        horizontal_789:[],
        vertical_147: [], 
        vertical_258: [], 
        vertical_369: [],
        diagonal_159: [], 
        diagonal_357:[]}
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
    @game = ''
  end

  def play_round(board, player)
    puts board.board_display.join
    
    puts "Choose a square for your turn"
    player_input = gets.chomp
    
    board.board_display = board.board_display.map do |number|
      if number == '1' && number == player_input
        player.numbers_chosen[:horizontal_123] << number
        player.numbers_chosen[:vertical_147] << number
        player.numbers_chosen[:diagonal_159] << number
        number = player.player_symbol
      elsif number == '2' && number == player_input
        player.numbers_chosen[:horizontal_123] << number
        player.numbers_chosen[:vertical_258] << number
        number = player.player_symbol
      elsif number == '3' && number == player_input
        player.numbers_chosen[:horizontal_123] << number
        player.numbers_chosen[:vertical_369] << number
        player.numbers_chosen[:diagonal_357] << number
        number = player.player_symbol
      elsif number == '4' && number == player_input
        player.numbers_chosen[:horizontal_456] << number
        player.numbers_chosen[:vertical_147] << number
        number = player.player_symbol
      elsif number == '5' && number == player_input
        player.numbers_chosen[:horizontal_456] << number
        player.numbers_chosen[:vertical_258] << number
        player.numbers_chosen[:diagonal_159] << number
        player.numbers_chosen[:diagonal_357] << number
        number = player.player_symbol
      elsif number == '6' && number == player_input
        player.numbers_chosen[:horizontal_456] << number
        player.numbers_chosen[:vertical_369] << number
        number = player.player_symbol
      elsif number == '7' && number == player_input
        player.numbers_chosen[:horizontal_789] << number
        player.numbers_chosen[:vertical_147] << number
        player.numbers_chosen[:diagonal_357] << number
        number = player.player_symbol
      elsif number == '8' && number == player_input
        player.numbers_chosen[:horizontal_789] << number
        player.numbers_chosen[:vertical_258] << number
        number = player.player_symbol
      elsif number == '9' && number == player_input
        player.numbers_chosen[:horizontal_789] << number
        player.numbers_chosen[:vertical_369] << number
        player.numbers_chosen[:diagonal_159] << number
        number = player.player_symbol
      else  
        number = number
      end
    end
    player.numbers_chosen.each do |key, value| 
      if value.length == 3
        puts board.board_display.join
        puts "#{player.name} wins!"
        @game = 'won'
      end  
    end
  end  

  def play_game(board, p1, p2)
    5.times do |number|
      if number == 4 
        play_round(board, p1)
        break if @game == 'won'
        puts board.board_display.join
        puts "All the spots have been chosen and no one won."
      else  
        play_round(board, p1)
        break if @game == 'won'
        play_round(board, p2)
        break if @game == 'won' 
      end
    end
  end  
end  

#Creates game board
new_board = Board.new
  
#Creates two players
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

# Loop for playing game

new_board.play_game(new_board, p1, p2)