class Room
attr_reader :category
  def initialize(category, length, width)
    @category = :bedroom
    @length   = length
    @width    = width
    # require "pry"; binding.pry
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    false
  end
end
