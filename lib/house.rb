class House

  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price.gsub("$",'').to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms.push(room)
  end

  def above_market_average?
    @price > 500000
  end

end
