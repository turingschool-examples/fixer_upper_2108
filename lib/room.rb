class Room
  attr_reader :category,
              :length,
              :width,
              :is_painted

  def initialize(category, length, width, is_painted = false)
    @category = category
    @length = length
    @width = width
    @is_painted = is_painted
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    @is_painted
  end

  def paint
    @is_painted = true
  end
end
