require 'rspec'
require './lib/room'
require './lib/house'

describe House do

  describe '#initialize' do
    it 'is an instance of house' do
    house = House.new('$400000', '123 sugar lane')

    expect(house).to be_a House
    end

    xit 'has readable attributes' do
    house = House.new('$400000', '123 sugar lane')

    expect(house.price).to eq('$400000')
    expect(house.address).to eq('123 sugar lane')
    end
  end
  describe '#rooms' do
    it 'defines rooms' do
    house = House.new('$400000', '123 sugar lane')

    expect(house.rooms).to eq([])
    end
  end


  describe '#add_room' do
  house = House.new('$400000', '123 sugar lane')
  room_1 = Room.new(:bedroom, 10, 13)
  room_2 = Room.new(:bedroom, 11, 15)
  rooms = [room_1, room_2]

    it 'adds a room to rooms array' do

    expect(rooms).to be_an Array
    expect(room_1).to be_a Room
    expect(rooms).to include(room_1)
    end
  end

  describe '#above_market_average?' do
    it 'determines if price is greater
    than 500000' do
    house = House.new('$400000', '123 sugar lane')
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    rooms = [room_1, room_2]

    expect(house.above_market_average?).to eq(false)
    end
  end
end
