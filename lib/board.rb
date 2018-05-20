class Board
  attr_reader :spaces

  def initialize(space)
    @spaces = [ [{"A1" => space_A1}, {"A2"=>space}, {"A3"=>space}, {"A4"=>space}],
                [{"B1" => space}, {"B2"=>space}, {"B3"=>space}, {"B4"=>space}],
                [{"C1" => space}, {"C2"=>space}, {"C3"=>space}, {"C4"=>space}],
                [{"D1" => space}, {"D2"=>space}, {"D3"=>space}, {"D4"=>space}]
              ]
  end

end
