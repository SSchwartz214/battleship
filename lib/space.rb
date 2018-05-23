class Space
  attr_reader :occupied,
              :hit

  def initialize
    @occupied = false
    @hit = false
  end

  def player_1_display
    if @occupied == false && @hit == false
      ' '
    elsif @occupied == true && @hit == true
      '🎯'
    elsif @occupied == true && @hit == false
      '🚢'
    elsif @occupied == false && @hit == false
      '🌊'
    end
  end

  def cpu_display
    if @occupied == false && @hit == false
      ' '
    elsif @occupied == true && @hit == true
      '🎯'
    elsif @occupied == false && @hit == false
      '🌊'
    end
  end

end
