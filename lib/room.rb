class Room
  attr_reader :category, :width

  def initialize(category, width, length)
    @category = category
    @width = width
    @length = length
    @is_painted = false
  end

  def length
    @length.to_i
  end

  def area
    area = length * @width
  end

  def is_painted?
    @is_painted
  end

  def paint
    @is_painted = true
  end
end
