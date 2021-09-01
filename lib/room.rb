class Room

  attr_reader :category, :length, :width, :is_painted

  def initialize (category, length, width, is_painted = false)
    @category = category
    @length = length
    @width = width
    @is_painted = is_painted
  end

  def area
    width_in_f = width.to_f
    length_in_f = length.to_f
    width_in_f * length_in_f
  end

  def is_painted?

    @is_painted
  end

  def paint
    @is_painted = true
  end

end
