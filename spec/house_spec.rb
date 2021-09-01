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

end
