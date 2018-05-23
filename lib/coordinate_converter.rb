module CoordinateConverter

  def split_and_convert_letters(coordinates)
    split_coordinates = coordinates.split(' ')
    single_char = split_coordinates.map do |character|
      character.chars
    end.flatten
    convert_coordinates(single_char)
  end

    def convert_coordinates(coordinates)
      if coordinates[0] == a
        [0, coordinates[1].to_i - 1]
      elsif coordinates[0] == b
        [1, coordinates[1].to_i - 1]
      elsif coordinates[0] == c
        [2, coordinates[1].to_i - 1]
      elsif coordinates[0] == d
        [3, coordinates[1].to_i - 1]
      end
    end



end
