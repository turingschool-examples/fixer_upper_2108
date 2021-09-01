require 'rspec'
require './lib/room'
require './lib/house'


RSpec.describe Room do
  context 'Iteration 1' do
    it 'exist' do
    room = Room.new(:bedroom, 10, "13")
    expect(room).to be_a(Room)
    end

    it 'has a category' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.category).to eq(:bedroom)
    end

    it 'has an area' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.area).to eq(130)
    end

    it 'is not painted' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.is_painted?).to eq(false)
    end

    xit 'is  painted' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.is_painted?).to eq(true)
    end
  end

  context 'Iteration 2' do
    xit 'exist'do
    house = House.new("$400000", "123 sugar lane")
    expect(house).to be_a(House)
    end
  end
end
