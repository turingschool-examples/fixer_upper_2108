class House
attr_reader :price,
            :address,
            :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price_to_integer
    @price = @price.gsub(/\D/,'').to_i
  end

  def add_room(room)
    @rooms.push(room)
  end

  def above_market_average?
    if @price >= 5000000
      true
    else
      false
    end
  end

  def rooms_from_category
  end

  def area
  end

  def details
  end
end
