class House
  attr_reader :price,
              :address,
              :rooms,
              :above_market_average

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @above_market_average = false
  end

  def price
    (@price.delete "$").to_i
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    @above_market_average
  end

  def rooms_from_category(category)
    rooms.find_all do|room|
      room.category == category
    end
  end

  # def area
  #   rooms.each do |room|
  #     room.area
  #   end
  # end

end
