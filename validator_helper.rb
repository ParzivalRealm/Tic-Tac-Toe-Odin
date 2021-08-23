module Validator

  def is_number?(player_choice)
    player_choice.to_f.to_s == player_choice.to_s || player_choice.to_i.to_s == player_choice.to_s
  end

  def is_choice_in_board?(player_choice, board)
    board.include?(player_choice)
  end

  def get_player_name
    puts"Please enter player name"
    player_name = gets.chomp
    if player_name == "Koko"
      puts "You cant play F you"
      begin
        exit!
      rescue SystemExit
        p "Dont come again"
      end
    end
   return player_name
  end
  def get_player_icon

    loop do
      
      puts"Please enter player icon"
      player_icon = gets.chomp
      if player_icon.length == 1
        return player_icon
        break
      end
    end
  end
end