require 'rspec'
require './lib/house'
require './lib/room'


describe House do
  it 'exists' do
    house = House.new('$400000', "123 sugar lane")

    expect(house).to be_an_instance_of House
  end

  it 'has a price' do
    house = House.new('$400000', "123 sugar lane")

    expect(house.price).to eq '$400000'

    house2 = House.new('$100000', "123 sugar lane")
    expect(house2.price).to eq '$100000'
  end

  it 'has an address' do
    house = House.new('$400000', "123 sugar lane")

    expect(house.address).to eq '123 sugar lane'

    house2 = House.new('$100000', "1600 Park Avenue")
    expect(house2.address).to eq '1600 Park Avenue'
  end

  it 'can have rooms' do
    house = House.new('$400000', "123 sugar lane")

    expect(house.rooms).to eq []

    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    house.add_room(room_1)
    house.add_room(room_2)

    expect(house.rooms).to eq [room_1, room_2]
  end

  it 'can determine if price is above market' do
    house = House.new("$400000", "123 sugar lane")

    expect(house.above_market_average?).to eq false

    # house2 = House.new('$550000', '1500 Central Park')
    # expect(house2.above_market_average?).to eq true
  end

  xit 'can return the rooms by category' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    bedrooms = house.rooms_from_category(:bedroom)
    basement = house.rooms_from_category(:basement)
    expect(bedrooms).to eq [room_1, room_2]
    expect(basement).to eq [room_4]
  end

  it 'can calculate the area of the house' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    expect(house.area).to eq 1900
  end

  it 'can give us the details' do
    house = House.new("$400000", "123 sugar lane")
    expected = {"price" => "$400000", "address" => "123 sugar lane"}

    expect(house.details).to eq expected
  end
end
