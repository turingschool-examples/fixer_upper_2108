require 'rspec'
require './lib/room'
require './lib/house'

RSpec.describe House do
  context 'Iteration 2' do
    it 'exists' do
      house = House.new("400000", "123 sugar lane")
      expect(house).to be_an_instance_of(House)
    end

    it 'has a price' do
      house = House.new("$400000", "123 sugar lane")
      house.price.slice!(0)
      house.price.to_i
      expect(house.price).to eq(400000)
    end

    it 'has an address' do
      house = House.new("400000", "123 sugar lane")
      expect(house.address).to eq("123 sugar lane")
    end

    it 'starts with no rooms' do
      house = House.new("400000", "123 sugar lane")
      expect(house.rooms).to eq([])
    end

    it 'has rooms' do
      house = House.new("400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house.add_room(room_1)
      house.add_room(room_2)
      expect(house.rooms).to eq([room_1, room_2])
    end
  end

  context 'Iteration 3' do
    it 'has a market value' do
      house = House.new("400000", "123 sugar lane")
      expect(house.above_market_average?).to eq(false)
    end

    it 'can get rooms from category' do
      house = House.new("400000", "123 sugar lane")
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

    it 'has an area' do
      house = House.new("400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      house.area

      expect(house.area).to eq(1900)
    end

    it 'has details' do
      house = House.new("400000", "123 sugar lane")
      house.details
      expect(house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
    end
  end

  context 'Iteration 4' do
    it 'has a price per square foot' do
      house = House.new("400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.price_per_square_foot).to eq(210.53)
    end

    it 'can sort rooms by area' do
      house = House.new("400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.rooms_sorted_by_area).to eq([room_4, room_3, room_2, room_1])
    end

    it 'can sort rooms by category' do
      house = House.new("400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.rooms_by_category).to eq({:bedroom => [room_1, room_2], :living_room => [room_3], :basement =>[room_4]})
    end
  end
end
