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
end