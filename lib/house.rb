#require './lib/room.rb'
class House

  attr_reader :address
  attr_accessor :rooms, :price, :rooms_bedroom, :rooms_living_room, :rooms_basement

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @rooms_bedroom = []
    @rooms_living_room = []
    @rooms_basement = []
  end

  def rooms
    @rooms
  end

  def add_room(room)
    @rooms.push(room)
  end

  def above_market_average?
    price.delete! ','
    price.delete! '$'
    price.to_i > 500000
  end

  def rooms_from_category(rooms)
    rooms.each do |i|
      if i.category == :bedroom
        @rooms_bedroom.push(i)
        return @rooms_bedroom
      elsif i.category == :living_room
        @rooms_living_room.push(i)
        return @rooms_living_room
      elsif i.category == :basement
        @rooms_basement.push(i)
        return @rooms_basement
      else
        p "room type not recognized"
      end
    end
  end
end
