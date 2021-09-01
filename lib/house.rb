class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price[1..-1].to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price > 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    area = 0
    @rooms.each do |room|
      area += room.area
    end
    area
  end

  def details
    {"price" => @price, "address" => @address}
  end

  def price_per_square_foot
    (@price.to_f / area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by {|room| room.area}.reverse
  end

  def rooms_by_category
    @rooms.sort_by {|room| room.category}

  end
end
