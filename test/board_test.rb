require './test/test_helper'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_it_has_spaces
    skip
    space = Space.new("A1")
    board = Board.new(space)

    assert_equal space, board.grid[0]["A1"]


  end

end
