require 'rspec'
require './lib/room'

describe Room do

  describe '#initialize' do

    it 'is an instance of room' do
    room = Room.new('Bedroom', 10, 14)

    expect(room).to be_a Room
    end
  end

    it 'has readable attributes' do
    room = Room.new('Bedroom', 10, 14)

    expect(room.category).to eq('Bedroom')
    expect(room.length).to eq(10)
    expect(room.width).to eq(14)
  end

    it 'is not painted by default' do
    room = Room.new('Bedroom', 10, 14)

    expect(room.painted?).to eq(false)
    end

    it 'can be painted' do
    room = Room.new('Bedroom', 10, 14)

    expect(room.paint_room).to eq(true)
  end

  describe '#area' do
    it 'calculates area of room' do
    room = Room.new('Bedroom', 10, 14)

    expect(room.area).to eq(140)
    end
  end
end
