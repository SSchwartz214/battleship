require './test/test_helper'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_it_has_a_length
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

    assert_equal 2, destroyer.length
    assert_equal 3, submarine.length
  end

  def test_it_starts_with_full_hp
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

    assert_equal 2, destroyer.hp
    assert_equal 3, submarine.hp
  end

  def test_it_starts_off_the_board
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

    assert_nil destroyer.bow_coordinates
    assert_nil submarine.stern_coordinates

    assert_nil destroyer.bow_coordinates
    assert_nil submarine.stern_coordinates
  end

  def test_it_knows_its_position
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

      destroyer.place("A1", "B1")

      assert_equal "A1", destroyer.bow_coordinates
      assert_equal "B1", destroyer.stern_coordinates

      submarine.place("A2", "A4")

      assert_equal "A2", submarine.bow_coordinates
      assert_equal "A4", submarine.stern_coordinates
  end

  def test_it_can_be_fired_at
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

    destroyer.hit
    submarine.hit

    assert_equal 1, destroyer.hp
    assert_equal 2, submarine.hp
  end

  def test_it_can_be_sunk
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

    2.times do
      destroyer.hit
    end

    3.times do
      submarine.hit
    end

    assert destroyer.sunk?
    assert submarine.sunk?
  end
end
