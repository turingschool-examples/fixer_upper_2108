class Room
  attr_reader :category,
              :length,
              :width,
              :room_area

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @is_painted = false
  end

  def area
    room_area = length * width
  end

  def is_painted?
    @is_painted = false
  end

  def paint
    @is_painted = true
  end

end
