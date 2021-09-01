class Room
  attr_reader :category,
              :length,
              :width,
              :painted

  def initialize(category, length, width)
    @category = category
    @width = width
    @length = length
    @painted = false
  end

  def area
    area = @width.to_i * @length.to_i
  end

  def is_painted?
    @painted
  end

  def paint
    @painted = true
  end
end
