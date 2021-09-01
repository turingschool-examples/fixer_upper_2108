require 'room'

class House
attr_reader :price,
            :address,
            :rooms

  def initialize(price, address)
    price[0] = ""
    @price   = price.to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?

    @price > 500_000

  end

  def rooms_from_category(category)
    category_array = []
    @rooms.each do |room|
      if category == :bedroom && room.category == :bedroom
        category_array  << room
      elsif category == :basement && room.category == :basement
        category_array << room
      elsif category == :living_room && room.category == :living_room
        category_array << room
      end
      end
    category_array
  end

  def area
  total_area = 0

  @rooms.each do |room|
    total_area += room.area
  end
  
  total_area
  end

  def details

  details_hash = {"price" => @price, "address" => @address}

  end

  def price_per_square_foot
    (@price/area.to_f).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by {|room| room.area}
  end

  def rooms_by_category
    category_hash = Hash.new
    @rooms.each do |room|
    unless category_hash.keys.include?(room.category)
      category_hash[room.category] = []
    end
    end
    @rooms.each do |room|
      category_hash[room.category] << room
    end
    category_hash
  end

end
