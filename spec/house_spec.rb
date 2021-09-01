require 'rspec'
require './lib/room'
require './lib/house'

describe House do
  it "exists" do
  house = House.new("$400000", "123 sugar lane")

  expect(house).to be_an_instance_of(House)
  end

  it "can add a room to the house" do
  house = House.new("$400000", "123 sugar lane")
  room_1 = Room.new(:bedroom, 10, '13')
  room_2 = Room.new(:bedroom, 11, '15')
  rooms = [room1, room2]

  expect(rooms.add_room).to eq(room_1, room_2)

  end
end
