class Board
  require_relative "player"
  require_relative "game"
  attr_accessor :game_board

  def initialize()
    @game_board = "\n1|2|3\n4|5|6\n7|8|9\n\n"
  end

  def update_board(player_data, board)
    player_data.player_selection.each do |number|
      replacement_value = number.to_s
      board.game_board.gsub!(replacement_value, player_data.player_icon)
    end 
    puts board.game_board
  end

end