class House
  attr_reader :price, :address, :rooms, :above_market, :room_types

  def initialize(price, address, above_market = false, rooms = [])
    @price        = price
    @address      = address
    @rooms        = rooms
    @above_market = above_market
    @room_types   = room_types
  end

  def price
    @price.slice(1..6).to_i
  end

  def add_room(room)
    @rooms.push(room)
  end

  def above_market_average?
    @above_market
  end

  # def sort_rooms
  # end
  #
  # def rooms_from_category(category)
  #   # @room_types[category] => @rooms
  #   @room_types[:bedroom] => 30
  #
  # #   @room_types =  {category
  # #   "bedroom" => [],
  # #   "living_room" => [],
  # #   "basement" => []
  # # }
  #
  # # @room_types[:bedroom] << :bedroom
  # # @room_types[:living_room] << :living_room
  # # @room_types[:basement] << :basement
  # end
end
