require './lib/room'
require './lib/house'
require 'pry'
RSpec.describe House do

  it 'exists' do
    house = House.new("$400000", "123 sugar lane")
    expect(house).to be_instance_of(House)
  end

  it 'has a price' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.price).to eq("$400000")
  end

  it 'has an address' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.address).to eq("123 sugar lane")
  end

  it 'has no rooms by default' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.rooms).to eq([])
  end

  it 'can add rooms' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    house.add_room(room_1)
    house.add_room(room_2)
    expect(house.rooms).to eq([room_1, room_2])
  end

  it 'can be above market average' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.above_market_average?).to eq(false)
  end

  it 'can return rooms from category' do
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

  it 'can return the area of the house' do
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

  it 'can report house details' do
    house = House.new("$400000", "123 sugar lane")
    expect(house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
  end


end
