require './lib/room'

class House
  attr_reader :price,
              :address,
              :rooms,
              :above_market_average

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @above_market_average = above_market_average
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    @price.slice!(0)
    @price.to_i > 500000
  end

  def rooms_from_category(category)
    sorted_rooms = []
    rooms.each do |room|
      if room.category == category
        sorted_rooms << room
      end
    end
    return sorted_rooms
  end

  def area
    total_area = 0
    rooms.each do |room|
      total_area += room.area
    end
    return total_area
  end

  def details
    @price.slice!(0)
    trimmed_price = @price.to_i
    house_details = {
      "price" => trimmed_price,
      "address" => @address
    }
  end

  def price_per_square_foot
    @price.slice!(0)
    trimmed_price = @price.to_i

    (trimmed_price.to_f / area.to_f).round(2)
  end
end
