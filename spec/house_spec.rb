require './lib/room'
require './lib/house'

describe '#House' do
  it 'describes a house' do
    house = House.new("$400000", "123 sugar lane")
    expect(house).to be_a(House)
  end

  it '#has rooms' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    expect(house).to be_a(House)
    expect(room_1).to be_a(Room)
    expect(room_2).to be_a(Room)
  end

  it '#add_room' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    expect(house).to be_a(House)
    expect(room_1).to be_a(Room)
    expect(room_2).to be_a(Room)
    expect(house.add_room(room_1)).to include(room_1)
    expect(house.add_room(room_2)).to include(room_2)
  end

  it '#above_market_average?' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    expect(house).to be_a(House)
    expect(room_1).to be_a(Room)
    expect(room_2).to be_a(Room)
    expect(room_3).to be_a(Room)
    expect(room_4).to be_a(Room)
    expect(house.above_market_average?).to eq(false)
  end

  it '#rooms_from_category' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    expect(house).to be_a(House)
    expect(room_1).to be_a(Room)
    expect(room_2).to be_a(Room)
    expect(room_3).to be_a(Room)
    expect(room_4).to be_a(Room)
    expect(house.add_room(room_1)).to include(room_1)
    expect(house.add_room(room_2)).to include(room_2)
    expect(house.add_room(room_3)).to include(room_3)
    expect(house.add_room(room_4)).to include(room_4)
    expect(house.rooms_from_category(:bedroom)).to include(room_1)
    expect(house.rooms_from_category(:basement)).to include(room_4)
  end

  it "#house area" do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    expect(house).to be_a(House)
    expect(room_1).to be_a(Room)
    expect(room_2).to be_a(Room)
    expect(room_3).to be_a(Room)
    expect(room_4).to be_a(Room)
    expect(house.add_room(room_1)).to include(room_1)
    expect(house.add_room(room_2)).to include(room_2)
    expect(house.add_room(room_3)).to include(room_3)
    expect(house.add_room(room_4)).to include(room_4)
    expect(house.area).to eq(1900)
  end

  it '#details' do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    expect(house).to be_a(House)
    expect(room_1).to be_a(Room)
    expect(room_2).to be_a(Room)
    expect(room_3).to be_a(Room)
    expect(room_4).to be_a(Room)
    expect(house.add_room(room_1)).to include(room_1)
    expect(house.add_room(room_2)).to include(room_2)
    expect(house.add_room(room_3)).to include(room_3)
    expect(house.add_room(room_4)).to include(room_4)
    expect(house.details).to eq({"price" => 400000, "address" => "123 Sugar Lane"})
  end

end
