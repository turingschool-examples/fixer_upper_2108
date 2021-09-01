class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price    = price
    @address  = address
    @rooms    = []
  end

  def add_room(room)
    @rooms.append(room)
  end

  def above_market_average?
    if @price.to_i > 500000
      true
    else
      false
    end
  end

#Dear Mike, Dione, and Dani, is an enumerable the correct thing to use here and if so...why are they so difficult? Your's truly -Christian
  def rooms_from_category(category)
    rooms.find_all do |room|
      room.category(:bedroom)
    end
    require "pry"; binding.pry
  end

  def area
  end
end
