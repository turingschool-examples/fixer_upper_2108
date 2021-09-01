class Room
  attr_reader :category,
              :length,
              :width

  def initialize(category, length, width)
    @category   = category
    @length     = length
    @width      = width
  end

  def area
    @length * @width.to_i
  end

  #Noticed I missedunerstood this portion with 1 minute left :(. The paint method used below is hardcoded and doesn't account for an unpainted room

  # def paint(room)
  #   painted_rooms = []
  #   painted_rooms << room
  # end

  def paint
    true
  end

  def is_painted?
    if paint == true
      true
    else
      false
    end
  end
end
