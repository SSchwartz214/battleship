require './test/test_helper'
require './lib/space'

class SpaceTest < Minitest::Test

def test_it_has_coordinates
  space = Space.new("A1")

  assert_equal "A1", space.coordinates
end

end
