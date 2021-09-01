class Room
  attr_reader :category, :length, :width, :paint_room
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @paint_room = 0
  end

  def area
    length * width.to_i
  end

  def is_painted?
    return false if @paint_room < 1
    true
  end

  def paint
    @paint_room += 1
  end
end
