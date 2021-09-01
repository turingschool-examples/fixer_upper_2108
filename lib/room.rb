class Room
attr_reader :category, :length, :width, :painted
  def initialize(category, length, width, painted = false)
    @category = category
    @length   = length
    @width    = width
    @painted  = painted
  end

  def area
    @width.to_i * 10
  end

  def is_painted?
    @painted
  end

  def paint
    @painted == false
  end


end
