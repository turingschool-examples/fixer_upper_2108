require 'rspec'
require './lib/room'
require './lib/house'

RSpec.describe House do

  house = House.new("$400000", "123 sugar lane")

  room_1 = Room.new(:bedroom, 10, '13')
  room_2 = Room.new(:bedroom, 11, '15')
  room_3 = Room.new(:living_room, 25, '15')
  room_4 = Room.new(:basement, 30, '41')



  it "can create a house with price and address" do
    expect(house.price).to eq(400000)
    expect(house.address).to eq("123 sugar lane")
    expect(house.rooms).to eq([])
  end

  it "can add rooms" do
    house.add_room(room_1)
    house.add_room(room_2)

    expect(house.rooms).to eq([room_1, room_2])
  end

  it "can determine whether house is above_market_average" do
    expect(house.above_market_average?).to be false
  end

  xit "can return an array of rooms of desginated category" do
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
    #expect(house.rooms_from_category(:basement)).to eq([room_4])
  end

#I changed the method name to total_area because I KNOW I will confuse the two area methods
  xit "can calculate the total area of the house" do
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    expect(house.total_area).to eq(1900)
  end

  xit "can return details of the house" do
    expect(house.details).to eq({"price" => 400000, "address" => "123 sugar lane"}
)
  end

  xit "can calculate price_per_square_foot" do
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    expect(house.price_per_square_foot).to eq(210.53)
  end


  xit "can return the rooms ordered from the biggest to the smallest" do
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    expect(house.rooms_sorted_by_area).to eq([room_4, room_3, room_2, room1])
  end

  xit "can return a hash with category as keys and rooms of that category as values" do
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    expect(house.rooms_by_category).to eq({:bedroom => [room_1, room_2], :living_room => [room_3], :basement => [room_4]})
  end

end
