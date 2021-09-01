require './lib/room.rb'
require 'rspec'

RSpec.describe Room do
  it 'exists' do
    room = Room.new(:bedroom, 10, '13')

    expect(room).to be_an_instance_of(Room)
  end

  it 'has a category' do
    room = Room.new(:bedroom, 10, '13')

    expect(room.category).to eq(:bedroom)
  end

  it 'has an area' do
    room = Room.new(:bedroom, 10, '13')
    area = 10 * 13

    expect(room.area).to eq(area)
  end

  it 'is painted' do
    room = Room.new(:bedroom, 10, '13')
    area = 10 * 13

    #room.paint(room)
    expect(room.is_painted?).to eq(true)
  end
end
