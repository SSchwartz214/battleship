class Ship
  attr_reader :length,
              :hp

  attr_accessor :start_space,
                :end_space

  def initialize(length)
    @length = length
    @hp = length
    @start_space = nil
    @end_space = nil
  end

  def place(start_space, end_space)
    @start_space = start_space
    @end_space = end_space
  end

  def hit
    @hp -= 1
  end

  def sunk?
    @hp == 0
  end

end
