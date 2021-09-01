class House
    attr_reader :price_str,
                :address,
                :rooms
            
    def initialize(price_str, address)
        @price_str = price_str
        @address = address
        @rooms = []
    end

    def price
        price_i = price_str.gsub(/\D/, "")
        price_i.to_i
    end

    def add_room(room)
        @rooms << room
    end

    def above_market_average?
        price > 500000
    end

    def rooms_from_category(type)
        rooms_array = rooms.select do |room|
            room.category == type
        end
        rooms_array
    end

    def area
        sum = 0
        area_array = rooms.map do |room|
            room.area
        end
        area_array.each do |room_area|
            sum += room_area
        end
        sum
    end
end