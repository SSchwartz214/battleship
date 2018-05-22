class Board
  attr_reader :grid

  def initialize
    @grid = [ [Space.new("A1"), Space.new("A2"), Space.new("A3"), Space.new("A4")],
              [Space.new("B1"), Space.new("B2"), Space.new("B3"), Space.new("B4")],
              [Space.new("C1"), Space.new("C2"), Space.new("C3"), Space.new("C4")],
              [Space.new("D1"), Space.new("D2"), Space.new("D3"), Space.new("D4")]
            ]
  end

  def coordinates
    A1 = grid[0][0]
  end
end
