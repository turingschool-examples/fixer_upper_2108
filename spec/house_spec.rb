require 'rspec'
require './lib/room'
require './lib/house'

RSpec.describe Room do
  context 'iteration 2' do

    it 'exists' do
      house = House.new("$400000", "123 sugar lane")

      expect(house).to be_a(House)
    end
  end

    it 'adds rooms' do
      house= House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house.add_room(room_1)
      house.add_room(room_2)
      expect(house.rooms).to be_an Array
    end


  context 'iteration 3' do

    xit 'above market average?' do
      house= House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
    end


    it 'rooms from category' do
      house= House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      expect(house.rooms_from_category(:bedroom)).to be_an Array
      expect(house.rooms_from_category(:basement)).to be_an Array
    end
  end

end
