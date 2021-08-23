
class Player
  require_relative "board"
  require_relative "game"
  require_relative "validator_helper"
  include Validator
  attr_reader :player_name, :player_icon
  attr_accessor :player_selection 

  def initialize()
    @player_name = get_player_name
    @player_icon = get_player_icon
    @player_selection = Array.new
  end

  def accept_player_movement(board)
    loop do
      puts "Please #{self.player_name} select the number you want to put your icon"
      player_in_turn_selection = gets.chomp
      if is_number?(player_in_turn_selection) && is_choice_in_board?(player_in_turn_selection, board)
        self.player_selection << player_in_turn_selection.to_i
        break
      end
    end
  end 
end