require './test/test_helper'
require './lib/space'

class SpaceTest < Minitest::Test

def test_it_has_coordinates
  space = Space.new("A1")

  assert_equal "A1", space.coordinates
end

def test_space_starts_unoccupied
  space = Space.new("A1")

  refute space.occupied
end

def test_space_starts_unattacked
  space = Space.new("A1")

  refute space.attacked
end

end
