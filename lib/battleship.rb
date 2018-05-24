require './lib/board'
require './lib/dialogue'
require './lib/human_player'
require './lib/ship'
require './lib/space'

board = Board.new
dialogue = Dialogue.new
p1 = HumanPlayer.new
destroyer = Ship.new(2)
space = Space.new

puts dialogue.welcome

user_input = ""
until user_input == "q" || user_input == "quit"
  user_input = gets.chomp

  if user_input == "p" || user_input == "play"
    puts dialogue.play
    p1.place_ship(destroyer, user_input, board)
  end

  if user_input == 'i' || user_input == "instructions"
    puts dialogue.instructions
  end
end
