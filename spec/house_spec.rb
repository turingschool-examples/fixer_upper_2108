require 'rspec'
require './lib/room'
require './lib/house'

RSpec.describe House do
  it "has attributes"do
   house = House.new(400000, "123 sugar lane")

   expect(house.price.to_i).to eq(400000)
   expect(house.address).to eq("123 sugar lane")
   expect(house.rooms).to eq([])
  end

  xit 'should add rooms' do
    house = House.new(400000, "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')

    expect(house.rooms).to eq([room_1, room_2])
  end

  it "calculate market value" do
    house = House.new(400000, "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    expect(house.above_market_average?).to eq(false)
  end

  xit 'takes rooms from a hash' do
    house = House.new(400000, "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    expect(house.rooms_from_category).to eq(:bedroom)
  end

  xit 'can calculate area of house' do
    house = House.new(400000, "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    expect(house.house_area).to eq(1900)
  end
end
