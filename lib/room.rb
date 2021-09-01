class Room
  attr_reader :category,
              :length,
              :width,
              :painted

  def initialize(category, length, width, painted = {painted: false})

    @category = category
    @length = length
    @width = width
    @painted = painted
  end

  def area
    @length * @width
  end

  def painted?
    @painted[:painted]
  end

  def paint_room
    @painted[:painted] = true
  end
end
