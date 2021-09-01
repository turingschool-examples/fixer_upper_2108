require './lib/room'
require './lib/house'
require 'rspec'

describe 'House' do
  describe '#initialize' do
    it 'creates a new house with a price' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.price).to eq("$400000")
    end

    it 'creates a new house with an address' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.address).to eq("123 sugar lane")
    end

    it 'creates a new house with an empty array of rooms' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.rooms).to eq([])
    end
  end

  describe '#add_room' do
    it 'adds rooms to the house' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to eq([room_1, room_2])
    end
  end

  describe '#above_market_price' do
    it 'checks if a house is above market price' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.above_market_price?).to eq(false)
    end
    it 'checks if a house is above market price' do
      house = House.new("$500000", "123 sugar lane")

      expect(house.above_market_price?).to eq(false)
    end
    it 'checks if a house is above market price' do
      house = House.new("$600000", "123 sugar lane")

      expect(house.above_market_price?).to eq(true)
    end
  end

  describe '#rooms_from_category' do
    it 'shows all rooms from a given category' do
      house = House.new("$600000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
    end

    it 'shows all rooms from a given category' do
      house = House.new("$600000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.rooms_from_category(:basement)).to eq([room_4])
    end
  end

  describe '#area' do
    it 'finds the combined area of all rooms in the house' do
      house = House.new("$600000", "123 sugar lane")
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
    it 'returns the price and address of the house in hash format' do
      house = House.new("$600000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.details).to eq({"price" => "600000", "address" => "123 sugar lane"})
    end
  end

  describe '#price_per_square_foot' do
    it 'returns the price by square foot' do
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

  # describe '#rooms_sorted_by_area' do
  #   it 'sorts rooms by largest to smallest area' do
  #     house = House.new("$400000", "123 sugar lane")
  #     room_1 = Room.new(:bedroom, 10, '13')
  #     room_2 = Room.new(:bedroom, 11, '15')
  #     room_3 = Room.new(:living_room, 25, '15')
  #     room_4 = Room.new(:basement, 30, '41')
  #     house.add_room(room_4)
  #     house.add_room(room_1)
  #     house.add_room(room_3)
  #     house.add_room(room_2)
  #
  #     expect(house.rooms_sorted_by_area).to eq([room_4, room_3, room_2, room_1])
  #   end
  end

  describe '#rooms_by_category' do
    it 'returns all rooms organized by category' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_4)
      house.add_room(room_1)
      house.add_room(room_3)
      house.add_room(room_2)

      expect(house.rooms_by_category).to eq({bedroom: [room_1, room_2], living_room: [room_3], basement: [room_4]})
    end
  end
end
