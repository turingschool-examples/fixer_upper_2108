class Room
  attr_reader :category,
              :length,
              :width,
              :painting,
              :is_painted
    def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @painting = 0
    @is_painted = false
  end

def area
  @length * @width.to_i
end

def is_painted?
  is_painted
end

def paint
  @painting += 1
  @is_painted = true if
  @painting == 1
end

end
