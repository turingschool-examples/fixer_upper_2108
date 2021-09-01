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

      expect(house.room_from_category(:bedroom)).to eq([room_1, room_2])
    end
  end

end
