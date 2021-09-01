require './lib/room'

RSpec.describe Room do

  it 'exists' do
    room = Room.new(:bedroom, 10, "13")
    expect(room).to be_an_instance_of(Room)
  end

  it 'has accessible attributes' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.category).to eq :bedroom
  end

  it 'returns the area of room' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.area).to eq 130
  end

  it 'is not painted by default' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.is_painted?).to eq false
  end

  it 'can be painted by a method' do
    room = Room.new(:bedroom, 10, "13")
    room.paint
    expect(room.is_painted?).to eq true
  end
end
