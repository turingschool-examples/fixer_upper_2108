require 'rspec'
require './lib/room'

RSpec.describe Room do
  context 'iteration 1' do
    it 'exists' do
      room = Room.new(:bedroom, 10, "13")

      expect(room).to be_a(Room)
    end

    it 'has area' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.area).to eq (130)
    end

    it 'is painted?' do
      room = Room.new(:bedroom, 10, "13")
      expect(room.is_painted?).to eq(false)
      room.paint
      expect(room.is_painted?).to eq(true)
    end



  end
end
