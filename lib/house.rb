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

  def above_market_average?(price)
    500000 >= @price.to_i
    end
  end

def rooms_from_category(category)
  @rooms.select do |room|
    category
    #ahhhh I couldn't figure out this method!
  end
end
