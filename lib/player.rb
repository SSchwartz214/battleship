class Player

  def place_ship(ship, row, column)
    board.grid[row][column] = ship
    ship.start_space = "A1"
    ship.end_space = "B1"
  end

end
