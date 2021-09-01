class House

  attr_reader :price, :address
  attr_accessor :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def rooms
    @rooms
  end

  def add_room(room)
    @rooms.push(room)
  end

end
