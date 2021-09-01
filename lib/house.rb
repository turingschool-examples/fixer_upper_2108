class House
  attr_reader :price
              :address
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def rooms
    @rooms
  end

  room_1 = Room.new(:bedroom, 10, 13)
  room_2 = Room.new(:bedroom, 11, 15)
  rooms = [room_1, room_2]


  def add_room
    rooms.each do |room|
      room << @rooms
    end
  end

  def above_market_average?
    if house.price.to_f > 500000
      return true
    else
      return false
    end
  end
end
