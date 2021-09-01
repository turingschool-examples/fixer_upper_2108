class House

  attr_reader :price, :address, :rooms

  def initialize (price, address)

    price.slice!(0)
    @price = price.to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price < 500000
      return false
    else
      return true
    end
  end

  def rooms_from_category(category)
    rooms_fitting_category = []

    rooms.each do |room|
      if room.category == category
        rooms_fitting_category << room
      end
    end

    rooms_fitting_category
  end

  def total_area

    total = 0

    rooms.each do |room|
      total_area << room.area
    end

    return total_area
  end

  def details
    return {"price" => @price, "address" => @address}
  end

  def price_per_square_foot
    @price.to_f/total_area).round(2)
  end

end
