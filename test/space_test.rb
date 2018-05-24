require './test/test_helper'
require './lib/space'

class SpaceTest < Minitest::Test


def test_space_starts_unoccupied
  space = Space.new

  assert_equal false, space.occupied
end

def test_space_starts_unattacked
  space = Space.new

  assert_equal false, space.hit
end

end
