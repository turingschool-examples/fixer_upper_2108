require 'rspec'
require './lib/room'

describe 'room' do
  describe '#initialize' do
    it 'has a category' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.category).to eq(:bedroom)
    end

    it 'has a length' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.length).to eq(10)
    end

    it 'has a width' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.width).to eq("13")
    end
  end
end
