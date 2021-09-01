class Room
  attr_reader :category,
              :length,
              :width,
              :area
  attr_accessor   :is_painted


  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @is_painted = false
    @area = length * width.to_i
  end

  def is_painted?
    @is_painted
  end

  def paint
    @is_painted = true
  end
end
