require 'rspec'
require './lib/room'
require './lib/house'

RSpec.describe House do
  it "exists" do
    house = House.new("$400000", "123 sugar lane")
    expect(house).to be_an_instance_of(House)
  end

  it "has a price and address" do
    house = House.new("$400000", "123 sugar lane")
    expect(house.price).to eq("$400000")
    expect(house.address).to eq("123 sugar lane")
  end

  it "will contain rooms but has none"
    house = House.new("$400000", "123 sugar lane")
    expect(rooms).to_eq([])

  it "can add new rooms" do
    room = Room.new(:bedroom, 10, "13")
    expect(room).to be_an_instance_of(Room)
  end

  it "can add more new rooms" do
    room = Room.new(:bedroom, 10, "13")
    expect(room).to be_an_instance_of(Room)
    expect(rooms).to_eq([])
    expect(house.add_room).to eq(:bedroom, 10, '13')
    expect(house.add_room).to eq(:bedroom, 11, '15')
  end

  it "check if house is above market average"
  house = House.new("$400000", "123 sugar lane")
    expect(house.above_market_average?).to_be(false)
  end

  it "displays room attributes from room category"
  expect(room).to be_an_instance_of(Room)
  expect(rooms).to_eq([])
  room_2 = Room.new(:bedroom, 11, '15')
  room_3 = Room.new(:living_room, 25, '15')
  room_4 = Room.new(:basement, 30, '41')
  expect(rooms_from_category(:bedroom).to_eq(1)
  expect(rooms_from_category(:living_room).to_eq(1)
  expect(rooms_from_category(:basement).to_eq(1)
end
