require 'rspec'
require './lib/room'
require './lib/house'

describe House do

  describe "#initialize" do
    it "creates an instance of House and has readible attributes" do
      house = House.new("$400000", "123 sugar lane")

      expect(house).to be_an_instance_of(House)
      expect(house.price).to eq(400000)
      expect(house.rooms).to eq([])
    end
  end

  describe "#add_room" do
    it "adds a room object to the rooms array" do
       house = House.new("$400000", "123 sugar lane")
       room_1 = Room.new(:bedroom, 10, "13")
       house.add_room(room_1)

       expect(house.rooms).to eq([room_1])
    end
  end

  describe "#above_market_average?" do
    it "returns a boolean value indicating if the house is above the maket average" do
      house = House.new("$400000", "123 sugar lane")

      expect(house.above_market_average?).to eq(false)
    end
  end

  describe "#rooms_from_category" do
    it "returns and array of room objects matching specified category" do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)

      expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
    end
  end

  describe "#area" do
    it "calculates total house area" do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.area).to eq(1900)
    end
  end

  describe "#details" do
    it "returns a has of house object attributes" do
      house = House.new("$400000", "123 sugar lane")

      expect(house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
    end
  end

  describe "#price_per_square_foot" do
    it "calculates price per sqaure foot" do
        house = House.new("$400000", "123 sugar lane")
        room_1 = Room.new(:bedroom, 10, '13')
        room_2 = Room.new(:bedroom, 11, '15')
        room_3 = Room.new(:living_room, 25, '15')
        room_4 = Room.new(:basement, 30, '41')
        house.add_room(room_1)
        house.add_room(room_2)
        house.add_room(room_3)
        house.add_room(room_4)

        expect(house.price_per_square_foot).to eq(210.53)
    end
  end

end
