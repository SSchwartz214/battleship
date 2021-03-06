require './test/test_helper'
require './lib/human_player'
require './lib/ship'
require './lib/board'

class HumanPlayerTest < Minitest::Test
  def test_it_can_place_a_ship
    player = HumanPlayer.new
    destroyer = Ship.new(2)
    board = Board.new

    player.place_ship(destroyer, "A1 A2", board)

    assert_equal board.grid[0][0], destroyer.start_space
    assert_equal board.grid[0][1], destroyer.end_space
  end

  def test_it_can_fire_a_shot
    player = HumanPlayer.new
    destroyer = Ship.new(2)


    player.fire("A1 A2", destroyer)

    assert_equal 1, destroyer.hp
  end

  def test_ship_can_be_sunk
    player = HumanPlayer.new
    destroyer = Ship.new(2)

    2.times do
    player.fire("A1 A2", destroyer)
  end

    assert destroyer.sunk?
  end

end
