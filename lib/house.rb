class House
  attr_reader   :price,
                :address,
                :room

  def initialize(price, address)
    @price      = price
    @address    = address
    @room       = []
  end

  def add_room(room)
    @room << room
  end

  def above_market_average?
    if price.to_i > 500000
      false
    else
      true
    end
  end
end
