class Room
attr_reader :category
  def initialize(category, length, width)
    @category = :bedroom
    @length   = length
    @width    = width
    # require "pry"; binding.pry
  end

  def area
    @length * @width.to_i
  end

  # def is_painted?
  #   room_painted = false
  #
  #   if room_painted == false
  #     puts false
  #   end
  # end
  #
  # def paint
  #   room_painted = true
  #   if is_painted == false
  #     puts true
  #   end
  #
  # end
end
