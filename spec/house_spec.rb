require "Rspec"
require "./lib/house"

describe House do
    describe "#initialize" do
        it "is an instance of House" do
            house = House.new("$400000", "123 sugar lane")

            expect(house).to be_a House
        end

        it "has values" do
            house = House.new("$400000", "123 sugar lane")

            expect(house.price_str).to eq "$400000"
            expect(house.address).to eq "123 sugar lane"
            expect(house.rooms).to eq []
        end
    end

    describe "#price" do
        it "coverts price to an integer" do
            house = House.new("$400000", "123 sugar lane")
            
            expect(house.price).to eq 400000
        end
    end

    describe "#add_room" do
        it "adds rooms" do
            house = House.new("$400000", "123 sugar lane")

            room_1 = Room.new(:bedroom, 10, '13')
            room_2 = Room.new(:bedroom, 11, '15')

            rooms_array = [room_1, room_2]

            house.add_room(room_1)
            house.add_room(room_2)

            expect(house.rooms).to eq rooms_array
        end
    end

    describe "#above_market_average?" do
        it "test to see if above $500,000" do
            house1 = House.new("$400000", "123 sugar lane")
            house2 = House.new("$600000", "123 sugar lane")

            expect(house1.above_market_average?).to be false
            expect(house2.above_market_average?).to be true
        end
    end

    describe "#rooms_from_category" do
        it "returns only the rooms with selected category" do
            house = House.new("$400000", "123 sugar lane")

            room_1 = Room.new(:bedroom, 10, '13')
            room_2 = Room.new(:bedroom, 11, '15')
            room_3 = Room.new(:living_room, 25, '15')
            room_4 = Room.new(:basement, 30, '41')

            house.add_room(room_1)
            house.add_room(room_2)
            house.add_room(room_3)
            house.add_room(room_4)

            test1 = [room_1, room_2]
            test2 = [room_4]

            expect(house.rooms_from_category(:bedroom)).to eq test1
            expect(house.rooms_from_category(:basement)).to eq test2
        end
    end

    describe "#area" do
        it "returns the area of the house" do
            house = House.new("$400000", "123 sugar lane")

            room_1 = Room.new(:bedroom, 10, '13')
            room_2 = Room.new(:bedroom, 11, '15')
            room_3 = Room.new(:living_room, 25, '15')
            room_4 = Room.new(:basement, 30, '41')

            house.add_room(room_1)
            house.add_room(room_2)
            house.add_room(room_3)
            house.add_room(room_4)

            expect(house.area).to eq 1900
        end
    end

    describe "#price_per_square_foot" do
        it "returns price per square foot" do
            house = House.new("$400000", "123 sugar lane")

            room_1 = Room.new(:bedroom, 10, '13')
            room_2 = Room.new(:bedroom, 11, '15')
            room_3 = Room.new(:living_room, 25, '15')
            room_4 = Room.new(:basement, 30, '41')

            house.add_room(room_1)
            house.add_room(room_2)
            house.add_room(room_3)
            house.add_room(room_4)

            expect(house.price_per_square_foot).to eq 210.53
        end
    end

    describe "#details" do
        it "cerates a hash with the details of the house" do
            house = House.new("$400000", "123 sugar lane")

            test = {"price" => 400000, "address" => "123 sugar lane"}
            
            expect(house.details).to eq test
        end
    end

    describe "#rooms_sorted_by_area" do
        it "sorts rooms from least to most area" do
            house = House.new("$400000", "123 sugar lane")

            room_1 = Room.new(:bedroom, 10, '13')
            room_2 = Room.new(:bedroom, 11, '10')
            room_3 = Room.new(:living_room, 25, '15')
            room_4 = Room.new(:basement, 30, '41')

            house.add_room(room_1)
            house.add_room(room_2)
            house.add_room(room_3)
            house.add_room(room_4)

            test = [room_2, room_1, room_3, room_4]

            expect(house.rooms_sorted_by_area).to eq test
        end
    end

    describe "#rooms_by_category" do
        it "creates a hash storing all the rooms orginized by the category" do
            house = House.new("$400000", "123 sugar lane")

            room_1 = Room.new(:bedroom, 10, '13')
            room_2 = Room.new(:bedroom, 11, '10')
            room_3 = Room.new(:living_room, 25, '15')
            room_4 = Room.new(:basement, 30, '41')

            house.add_room(room_1)
            house.add_room(room_2)
            house.add_room(room_3)
            house.add_room(room_4)

            bedrooms = [room_1, room_2]
            living_rooms = [room_3]
            basements = [room_4]

            test = {bedroom: bedrooms, living_room: living_rooms, basement: basements}

            expect(house.rooms_by_category).to eq test
        end
    end
end