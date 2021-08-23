module Validator

  def is_number?(player_choice)
    player_choice.to_f.to_s == player_choice.to_s || player_choice.to_i.to_s == player_choice.to_s
  end

  def is_choice_in_board?(player_choice, board)
    board.include?(player_choice)
  end
end