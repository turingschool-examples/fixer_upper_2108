require './lib/room'

class House
  attr_reader :price,
              :address,
              :rooms,
              :room
              
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

  def area
    house_area = []
    @rooms.each do |room|
      house_area << room.area
    end
    house_area.sum
  end

  def details
    {
      ("price") => @price,
      ("address") => @address
    }
  end

  def price_per_square_foot
    (@price.to_f / area.to_f).round(2)
  end

  #def rooms_sorted_by_area
  #  rooms_sorted_by_area = []
  #  @rooms.each do |room|
  #    rooms_sorted_by_area << room.area
    #  rooms_sorted_by_area.map { |room| (room.area) }
#  end
end
