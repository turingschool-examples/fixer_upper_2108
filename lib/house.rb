class House
  attr_reader :price,
              :address,
              :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(new_rooms)
    @rooms.push(new_rooms)
  end

  def above_market_average?
    if @price <= 500000
      return false
    else
      return true
    end
  end

  def rooms_from_category =
    {
    bedroom: 2,
    living_room: 1,
    basement: 1
    }
  end

  def house_area
  end
end
