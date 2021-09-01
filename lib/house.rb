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
    @rooms << room
  end

  def above_market_average?
    price.tr('$', '').to_i > 400000
  end

  def rooms_from_category(category)
    rooms.select do |room|
      room.category == category
    end
  end

  def area
    rooms.sum do |room|
      room.area
    end
  end

  def details
    h_details = {}
    h_details["price"] = price.tr('$', '').to_i
    h_details["address"] = address
    h_details
  end

  def price_per_square_foot
    (price.tr('$', '').to_f / area).round(2)
  end

  def rooms_sorted_by_area
    rooms.sort { |first, second| -first.area <=> -second.area }
  end

  def rooms_by_category
    room_cat = {}
    rooms.each do |room|
      if room_cat[room.category] == nil
        room_cat[room.category] = [room]
      else
        room_cat[room.category] << room
      end
    end
    room_cat
  end
end
