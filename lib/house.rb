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
    false
  end

  def rooms_from_category(category)
    @rooms.select{|room| room.category == category}
  end

  def area
    areas = @rooms.map{|room| room.area}
    areas.sum
  end

  def details
    {"price" => (@price[1..@price.length]).to_i, "address" => @address}
  end

  def price_per_square_foot
    (details["price"].to_f / area.to_f).round(2)
  end


end
