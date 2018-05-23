require './test/test_helper'
require './lib/player'

class PlayerTest < Minitest::Test
  def test_it_can_place_a_ship
    player_1 = Player.new
    destroyer = Ship.new(2)

    ship = destroyer
    start_space = [0]

    player.place_ship(destroyer)

    assert_equal destroyer, board.grid[0][0]
  end
end
