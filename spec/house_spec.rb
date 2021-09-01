require './lib/room'
require './lib/house'

RSpec.describe House do
  it "exists" do
    house = House.new("$400000", "123 sugar lane")

    expect(house).to be_an_instance_of(House)
  end

  it "returns a price" do
    house = House.new("$400000", "123 sugar lane")

    expect(house.price).to eq(400000)
  end

  it "returns an address" do
    house = House.new("$400000", "123 sugar lane")

    expect(house.address).to eq("123 sugar lane")
  end

  it "returns an empty array" do
    house = House.new("$400000", "123 sugar lane")

    expect(house.rooms).to eq([])
  end
  it "returns an array with rooms" do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')

    house.add_room(room_1)
    house.add_room(room_2)

    expect(house.rooms).to eq([room_1, room_2])
  end

  it "returns above_market_average?" do
    house = House.new("$400000", "123 sugar lane")

    expect(house.above_market_average?).to eq(false)
  end

  it "adds rooms" do
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
    expect(house.area).to eq(1900)
  end

  it "has details" do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')

    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    expect(house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
  end
end
