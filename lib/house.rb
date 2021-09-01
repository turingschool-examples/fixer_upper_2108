class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    price = price.to_i
    if price > 500000
      return true
    elsif price < 500000
      return false
    end
  end

  def rooms_from_category(room)
    @rooms.find_all do |type|
      type.category == room
    end
  end

  def area
    @rooms.each do |area_1|
      room_width = area_1.width.to_i
      room_length = area_1.length

      room_area = room_width * room_length
      house_area = room_area * rooms.count
    end
  end

  def details
    details_hash = {"price" => '', "address" => ""}
    price.each do |price|
      details_hash["price"] << @price
    end
    address.each do |address|
      details_hash["address"] << @address
    end
  end
end
