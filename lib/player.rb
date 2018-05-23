class Player

  def place_ship(ship, start_space, end_space)
    ship.place[start_space][end_space]
    board.grid[start_space][end_space] = ship
  end

end
