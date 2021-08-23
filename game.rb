
class Game
  require_relative "player"
  require_relative "board"
  attr_accessor :turn_number, :board

  def initialize()
    @board =  Board.new()
    @player_1 = Player.new()
    @player_2 = Player.new()
    @turn_number = 1
    @win_flag = false
    turn(@turn_number)
  end

  def turn(turn_number)
    puts board.game_board
    if turn_number > 9 && @win_flag == false
      puts "Oops no one won this game"
    elsif turn_number.odd?
      @player_1.accept_player_movement(board.game_board)
      @board.update_board(@player_1, board)
      win_condition_checker(@player_1)
    else
      @player_2.accept_player_movement(board.game_board)
      @board.update_board(@player_2, board)
      win_condition_checker(@player_2)
    end    
  end

  def win_condition_checker(player)
    @turn_number += 1
    
    if @turn_number > 5
      win_condition(player.player_name, player.player_selection)
    else
      turn(@turn_number)
    end
  end
  
  def win_condition(player_name, player_selections)
    #8 possible win conditions
    win_possibilities = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]

    if win_possibilities.any?{|array| ( array - player_selections ).empty?}
      puts "Congratulations #{player_name}, you've won!"
      @win_flag = true
    else
      turn(@turn_number)
    end
  end    
end

