class Room
    attr_reader :category,
                :area,
                :painted
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @area = 130
    @painted = false

  end

  def is_painted?
    @painted
  end
end
