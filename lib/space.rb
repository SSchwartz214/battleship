class Space
  attr_reader :occupied,
              :hit

  def initialize
    @occupied = false
    @hit = false
  end

  def occupy
    @occupied = true
  end

  def fired_at
    @hit = true
  end

  def human_display
    if @occupied == false && @hit == false
      ' '
    elsif @occupied == true && @hit == true
      '🎯'
    elsif @occupied == true && @hit == false
      '🚢'
    elsif @occupied == false && @hit == true
      '🌊'
    end
  end

  def cpu_display
    if @occupied == false && @hit == false
      ' '
    elsif @occupied == true && @hit == true
      '🎯'
    elsif @occupied == false && @hit == true
      '🌊'
    end
  end

end
