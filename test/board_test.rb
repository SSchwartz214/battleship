require './test/test_helper'
require './lib/board'
require './lib/space'
require './lib/ship'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_it_has_spaces
    board = Board.new

    assert_instance_of Space, board.grid[0][0]["A1"]
  end

  def test_ship_can_be_placed_on_it
    board = Board.new
    destroyer = Ship.new(2)

    board.place_ship(destroyer, 0, 0)

    assert_instance_of destroyer, board.grid[0][0]["A1"]
  end
end
