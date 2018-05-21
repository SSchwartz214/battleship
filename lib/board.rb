class Board
  attr_reader :grid

  def initialize
    @grid = [ [{"A1" => Space.new("A1")}, {"A2" => Space.new("A2")}, {"A3" => Space.new("A3")}, {"A4" => Space.new("A4")}],
              [{"B1" => Space.new("B1")}, {"B2" => Space.new("B2")}, {"B3" => Space.new("B3")}, {"B4" => Space.new("B4")}],
              [{"C1" => Space.new("C1")}, {"C2" => Space.new("C2")}, {"C3" => Space.new("C3")}, {"C4" => Space.new("C4")}],
              [{"D1" => Space.new("D1")}, {"D2" => Space.new("D2")}, {"D3" => Space.new("D3")}, {"D4" => Space.new("D4")}]
            ]
  end

  def place_ship(ship, row, column)
    grid[row][column] = ship
  end


end
