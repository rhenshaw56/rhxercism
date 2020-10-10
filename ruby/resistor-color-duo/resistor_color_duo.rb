# class ResistorColorDuo
#   COLORS = {
#     "black" => "0",
#     "brown" => "1",
#     "red" => "2",
#     "orange" => "3",
#     "yellow" => "4",
#     "green" => "5",
#     "blue" => "6",
#     "violet" => "7",
#     "grey" => "8",
#     "white" => "9"
#   }
#   def self.value(list)
#     resistor_value = ""

#     list[0...2].each do |color|
#       resistor_value += COLORS[color]
#     end    
#     return resistor_value.to_i
#   end
# end


class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.value(colors_array)
    colors_array[0..1].map do |color_string|
      COLORS.index color_string
    end.join.to_i
  end
end