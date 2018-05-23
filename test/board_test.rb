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

    assert_instance_of Space, board.grid[0][0]
  end
end
