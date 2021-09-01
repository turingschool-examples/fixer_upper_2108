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

    def price_per_square_foot
        (price.to_f/area.to_f).round(2)
    end

    def details
        {"price" => price, "address" => @address}
    end

    def rooms_sorted_by_area
         rooms.sort_by(&:area)
    end

    def rooms_by_category
        {bedroom: rooms_from_category(:bedroom), living_room: rooms_from_category(:living_room), basement: rooms_from_category(:basement)}
    end
end