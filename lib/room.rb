class Room

  attr_reader :category,
              :length,
              :width

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width

  end

  def area
    @length * @width.to_i

  end

  def paint

  end


  def is_painted?
    if room.paint
      true
    else
      false
    end
  end
end
