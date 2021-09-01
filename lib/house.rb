require './lib/room.rb'
class House

  attr_reader :address
  attr_accessor :rooms, :price

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

  def above_market_average?
    price.delete! ','
    price.delete! '$'
    price.to_i > 500000
  end
end
