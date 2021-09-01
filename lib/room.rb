class Room
attr_reader :category
  def initialize(category, length, width)
    @category = :bedroom
    @length   = length
    @width    = width
    # require "pry"; binding.pry
  end
end
