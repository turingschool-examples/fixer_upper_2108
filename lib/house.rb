class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price.delete_prefix("$").to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.select do |room|
      room.category == category
    end
  end


end
