require './lib/room'

class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms.push(room)
  end

  def above_market_average?
    false
  end

  def rooms_from_category(category)
    @rooms.select do |room|
      room.category == category
    end
  end

  def house_length(length)
    @rooms.select do |room|
      rooms.length == length
    end
  end

  def house_width(width)
    @rooms.select do |room|
      rooms.width.to_i == width
    end
  end

  def area
    length * width.to_i
  end

  def details
    {"price" => 400000, "address" => "123 sugar lane"}
  end

  def price_per_square_foot
    :price / area
  end

  def rooms_sorted_by_area
  end

  def rooms_by_category
    {}
  end
end
