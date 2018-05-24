class Dialogue

  def welcome
  %q(
    Welcome to BATTLESHIP

    Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >
  )
  end

  def instructions
    %q(
      The objective of this game is to sink all of your oponents battleships.
      Each player receives 2 ships and places them on their board. Then each
      player takes turns firing at eachothers' boards by entering grid
      coordinates.  When all of one player's ships are sunk that signifies the
      end of the game and their opponent is victorious!
    )
  end

  def play
    %q(
    I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the
    second is three units long.
    The grid has A1 at the top left and D4 at the bottom right.

    Enter the squares for the two-unit ship:
  )
  end

end
