class House
  attr_reader :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
   @price = @price.delete "$"
   @price = @price.to_i
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if price >= 500_000
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
    total_area = 0
    @rooms.each do |room|
      total_area += room.area
    end
    total_area
  end

  def details
    details = {"price" => price, "address "=> @address}
  end

  def price_per_square_foot
    (price / area.to_f).round(2)
  end

  def rooms_sorted_by_area
    sorted = []
    @rooms.each do |room|
      room.area do |area|
        area.sort do |area|
          sorted << area
        end
      end
    end
  end
end
