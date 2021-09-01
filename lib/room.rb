class Room
  attr_reader :category, :length, :width

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
  end

  def area
    width_num = width.to_i
    @length * width_num
  end

  def is_painted?
    painted = false
    if painted == false
      return false
    # while room_painted == false
    elsif painted == true
      return true
    end

  end

  def paint
    painted = true
    if painted == false
      return false
    elsif painted == true
      return true
    end
  end
end
