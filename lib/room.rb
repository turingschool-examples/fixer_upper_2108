class Room
  attr_reader :category, :length, :width
  attr_accessor :is_painted
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @is_painted = false
  end

  def area
    return length.to_i * width.to_i
  end

  def is_painted
    @is_painted
  end

  def paint
    @is_painted = true
  end
end
