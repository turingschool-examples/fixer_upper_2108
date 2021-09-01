class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = 400000
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    @price >= 500000
  end

  def rooms_from_category(type)
    @rooms.select do |room|
      room.category == type
    end
  end

  def area
    room_array = rooms.map do |room|
      room.area
    end.flatten
    total = 0
    room_array.each do |room_get|
      total += room_get
    end
    total
  end

  def details
    {"price" => @price,
     "address" => @address
    }
  end
end
