require './lib/room'

class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    rooms << room
  end

  def above_market_average?
    if price.to_i < 500000
      false
    else
      true
    end
  end

  def rooms_from_category(category)
    rooms.select do |room|
      room.category == category
    end
  end

  def area
    square_feet = 0
    rooms.each do |room|
      room.area + square_feet
    end
    square_feet
  end

  def details
    details = {"price" => price, "address" => address}
  end
end
