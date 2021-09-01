require 'rspec'
require './lib/room'
require './lib/house'

describe 'iteration 2' do
  it 'is a house'do
    house = House.new("$400000", "123 sugar lane")

    expect(house.price).to eq(400000)
    expect(house.address).to eq("123 sugar lane")
    expect(house.rooms).to match([])
  end

  it 'can add rooms' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 20, '20')

    expect(house.add_room(room_1))
    expect(house.add_room(room_2))
    expect(house.rooms).to eq([room_1, room_2])
  end
end

describe 'iteration 3' do
  it 'it is not created above market average by default' do
    house = House.new("$400000", "123 sugar lane")

    expect(house.above_market_average?).to be(false)
  end

  it 'can be created above market average' do
    house = House.new("$400000", "123 sugar lane", true)

    expect(house.above_market_average?).to be(true)
  end

  it 'can have lots of rooms' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
    expect(house.rooms_from_category(:basement)).to eq([room_4])
  end
end
