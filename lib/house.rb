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

  def above_market_price?
    house_price = @price.slice(1..).to_i
    if house_price > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    @rooms.find_all { |room| room.category == category }
  end
end
