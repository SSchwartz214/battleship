class HumanPlayer

  def place_ship(ship, coordinates, board)
    playable_coordinates = convert_coordinates(coordinates)
    first_space = board.grid[playable_coordinates[0][0]][playable_coordinates[0][1]]
    second_space = board.grid[playable_coordinates[1][0]][playable_coordinates[1][1]]
    ship.start_space = first_space
    ship.end_space = second_space
    first_space.occupy
    second_space.occupy
  end

  def fire(coordinates, ship)
    coordinates = convert_coordinates(coordinates)
    ship.hit
  end

  def convert_coordinates(coordinates)
    split_coordinates = coordinates.upcase.split(' ')
      split_coordinates.map do |single_coordinate|
        assign_coordinates_to_input(single_coordinate)
    end
  end

  def assign_coordinates_to_input(coordinates)
    if coordinates[0] == "A"
      [0, coordinates[1].to_i - 1]
    elsif coordinates[0] == "B"
      [1, coordinates[1].to_i - 1]
    elsif coordinates[0] == "C"
      [2, coordinates[1].to_i - 1]
    elsif coordinates[0] == "D"
      [3, coordinates[1].to_i - 1]
    end
  end

end
