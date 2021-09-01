require 'rspec'
require './lib/house'

describe House do
  describe '#initialize' do
    it 'creates instance variables correctly' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.price).to eq(400000)
      expect(house.address).to eq("123 sugar lane")
    end

    it 'returns empty room array to start' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.rooms).to eq([])
    end
  end
  describe '#add_room' do
    it 'adds room objects to rooms array' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to eq([room_1, room_2])
    end
  end
  describe '#above_market_average?' do
    it 'returns false when price is less than $500000' do
      house = House.new("$400000", "123 sugar lane")


      expect(house.above_market_average?).to eq(false)
    end
  end
  describe '#rooms_from_category' do
    it 'returns room objects in specified category' do
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
  describe '#area' do
    it 'returns total house area' do
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
  end
  describe '#details' do
    it 'creates accurate hash of house details' do

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
  describe '#price_per_square_foot' do
    it 'calculates price per square foot correctly' do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_4)
      house.add_room(room_1)
      house.add_room(room_3)
      house.add_room(room_2)


      expect(house.price_per_square_foot).to eq(210.53)
    end
  end
  describe '#rooms_sorted_by_area' do
    it 'returns an array of room objects sorted by area (smallest to largest)' do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_4)
      house.add_room(room_1)
      house.add_room(room_3)
      house.add_room(room_2)


      expect(house.rooms_sorted_by_area).to eq([room_1, room_2, room_3, room_4])
    end
  end
  describe '#rooms_by_category' do
    it 'returns an hash of room objects as values and category as keys' do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_4)
      house.add_room(room_1)
      house.add_room(room_3)
      house.add_room(room_2)
      house.rooms_by_category

      expect(house.rooms_by_category).to eq({:bedroom => [room_1, room_2], :living_room => [room_3], :basement => [room_4]})
    end
  end
end
