require './test/test_helper'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test

  def test_it_has_spaces
    space = Space.new("A1")
    board = Board.new(space)

    assert_equal space, board.spaces[0]["A1"]


  end

end
