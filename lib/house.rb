class House
  att_reader  :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price.to_i
    @address = address
    @rooms = []
  end
