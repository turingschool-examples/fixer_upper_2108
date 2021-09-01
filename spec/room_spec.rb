require 'rspec'
require './lib/room'

describe 'Room' do
  describe '#initialize' do
    it 'creates a new room with a defined category of room' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.category).to eq(:bedroom)
    end

    it 'creates a new room with a defined length' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.length).to eq(10)
    end

    it 'creates a new room with a defined width' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.width).to eq("13")
    end

    it 'creates an unpainted room' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.painted).to eq(false)
    end
  end
  describe '#area' do
    it 'gives the area of the room' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.area).to eq(130)
    end
  end
  describe 'is_painted?' do
    it 'checks if a room is painted' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.is_painted?).to eq(false)
    end
  end
  describe '#paint' do
    it 'changes a room to be painted' do
      room = Room.new(:bedroom, 10, "13")
      room.paint

      expect(room.is_painted?).to eq(true)
    end
  end
end
