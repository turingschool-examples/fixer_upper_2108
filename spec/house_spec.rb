require './lib/room'
require './lib/house'

RSpec.describe House do
  it "exists" do
    house = House.new("$400000", "123 sugar lane")

    expect(house).to be_an_instance_of(House)
  end

  it "has a price" do
    house = House.new("$400000", "123 sugar lane")

    expect(house.price).to eq("$400000")
  end

  it "has an address" do
    house = House.new("$400000", "123 sugar lane")

    expect(house.address).to eq("123 sugar lane")
  end

  it "can store rooms" do
    house = House.new("$400000", "123 sugar lane")

    expect(house.rooms).to eq([])
  end

  it "can add rooms" do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    house.add_room(room_1)
    house.add_room(room_2)

    expect(house.rooms).to eq([room_1, room_2])
  end

  it "can tell if a house is above_market_average ($500,000)" do
    house = House.new("$400000", "123 sugar lane")

    expect(house.above_market_average?).to eq(false)

    house_1 = House.new("$500000", "123 sugar lane")

    expect(house_1.above_market_average?).to eq(false)

    house_2 = House.new("$600000", "123 sugar lane")

    expect(house_2.above_market_average?).to eq(true)
  end



end
