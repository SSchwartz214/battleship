require './test/test_helper'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_it_has_a_length
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

    assert_equal 2, destroyer.length
    assert_equal 3, submarine.length
  end

  def test_it_starts_with_no_damage
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

    assert_equal 0, destroyer.damage
    assert_equal 0, submarine.damage
  end

  def test_it_starts_off_the_board
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

    assert_equal nil, destroyer.start_space
    assert_equal nil, submarine.start_space

    assert_equal nil, destroyer.end_space
    assert_equal nil, submarine.end_space
  end

  def test_it_can_be_placed_on_board
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

      destroyer.place("A1", "B1")

      assert_equal "A1", destroyer.start_space
      assert_equal "B1", destroyer.end_space

      submarine.place("A2", "A4")

      assert_equal "A2", submarine.start_space
      assert_equal "A4", submarine.end_space
  end

end
