require_relative 'space'
class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(4){[Space.new, Space.new, Space.new, Space.new]}
  end

  def display_human_grid
    puts %(
      =============
        1  2  3  4
      A #{grid[0][0].human_display} #{grid[0][1].human_display} #{grid[0][2].human_display} #{grid[0][3].human_display}
      B #{grid[1][0].human_display} #{grid[1][1].human_display} #{grid[1][2].human_display} #{grid[1][3].human_display}
      C #{grid[2][0].human_display} #{grid[2][1].human_display} #{grid[2][2].human_display} #{grid[2][3].human_display}
      D #{grid[3][0].human_display} #{grid[3][1].human_display} #{grid[3][2].human_display} #{grid[3][3].human_display}
      =============
    )
  end
  
  def display_cpu_grid
    puts %(
      =============
        1  2  3  4
      A #{grid[0][0].cpu_display} #{grid[0][1].cpu_display} #{grid[0][2].cpu_display} #{grid[0][3].cpu_display}
      B #{grid[1][0].cpu_display} #{grid[1][1].cpu_display} #{grid[1][2].cpu_display} #{grid[1][3].cpu_display}
      C #{grid[2][0].cpu_display} #{grid[2][1].cpu_display} #{grid[2][2].cpu_display} #{grid[2][3].cpu_display}
      D #{grid[3][0].cpu_display} #{grid[3][1].cpu_display} #{grid[3][2].cpu_display} #{grid[3][3].cpu_display}
      =============
    )
  end

end
