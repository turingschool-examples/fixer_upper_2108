require 'rspec'
require 'room'

describe Room do
  describe '#initialize' do
    it 'creates instance variables correctly' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.category).to eq(:bedroom)
      expect(room.length).to eq(10)
      expect(room.width).to eq("13")
    end
  end
  describe '#area' do
    it 'calculates the area of the room' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.area).to eq(130)
    end
  end
  describe '#is_painted?' do
    it 'returns boolean value of painted variable' do
      room = Room.new(:bedroom, 10, "13")

      expect(room.is_painted?).to eq(false)
    end
  end
  describe 'paint' do
    it 'changes value of painted variable to true' do
      room = Room.new(:bedroom, 10, "13")
      room.paint

      expect(room.is_painted?).to eq(true)
    end
  end
end
