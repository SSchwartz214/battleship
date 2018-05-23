class Ship
  attr_reader :length,
              :hp,
              :bow_coordinates,
              :stern_coordinates

  def initialize(length)
    @length = length
    @hp = length
    @bow_coordinates = nil
    @stern_coordinates = nil
  end

  def place(bow_coordinates, stern_coordinates)
    @bow_coordinates = bow_coordinates
    @stern_coordinates = stern_coordinates
  end

  def hit
    @hp -= 1
  end

  def sunk?
    @hp == 0
  end

end
