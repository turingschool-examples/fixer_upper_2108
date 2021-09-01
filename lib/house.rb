class House
  attr_reader :price,
              :adress,
              :rooms

  def initialize(price, address)
    @price = price
    @address = adress
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end
end
