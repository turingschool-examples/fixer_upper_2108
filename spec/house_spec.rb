require 'rspec'
require './lib/room'
require './lib/house'

RSpec.describe House do
let(:price) {"400000"}
let(:address) {"123 sugar lane"}
let(:house) {House.new(price, address)}

  it 'is an instance of' do
    house = House.new("400000", "123 sugar lane")
    expect(house).to be_an_instance_of(House)
  end

  it 'has a price of' do
    house = House.new("400000", "123 sugar lane")
    expect(house.price).to eq("400000")
  end

  it 'has an address' do
    house = House.new("400000", "123 sugar lane")
    expect(house.address).to eq("123 sugar lane")

  end

  it 'has no rooms' do
    house = House.new("400000", "123 sugar lane")
    expect(house.room).to eq([])
  end

  it 'can add rooms' do
    house = House.new("400000", "123 sugar lane")
    expect(house.add_room(room_1)).to eq([room_1])
  end


  it 'above market average' do
    house = House.new("400000", "123 sugar lane")
    expect(house.above_market_average?).to be(false)
  end

  xit 'can add rooms' do
    house = House.new("400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

  end
end
