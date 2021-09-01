class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
  end

  def rooms_from_category(category)
    @rooms.map do |room|
      room if room.category == category
    end
  end

  def area
  end

end
