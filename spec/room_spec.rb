require 'rspec'
require './lib/room'

describe Room do
  it 'is a room' do
    room = Room.new(:bedroom, 10, "13")

    expect(room).to be_an_instance_of Room
  end

  it 'has a bedroom' do
    room = Room.new(:bedroom, 10, "13")

    expect(room.category).to eq :bedroom
  end

  it 'can calculate square footage' do
    room = Room.new(:bedroom, 10, 13)

    expect(room.area).to eq 130

    room2 = Room.new(:bedroom, 12, 15)
    expect(room2.area).to eq 180
  end

  it 'can be painted' do
    room = Room.new(:bedroom, 10, 13)

    expect(room.is_painted?).to eq false

    room.paint
    expect(room.is_painted?).to eq true
  end
end
