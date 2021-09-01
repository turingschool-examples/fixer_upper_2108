require './lib/room'

RSpec.describe Room do
  it 'exist' do
    room = Room.new(:bedroom, 10, "13")
    expect(room).to be_an_instance_of(Room)
    expect(room.category).to eq(:bedroom)
    expect(room.length).to eq(10)
    expect(room.width).to eq("13")
  end

  it 'can determine the area of a room' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.area).to be_an(Integer)
    expect(room.area).to eq(130)
  end

  it 'can tell is a room is painted' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.is_painted).to eq(false)
  end

  it 'can paint a room' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.is_painted).to be(false)
    room.paint
    expect(room.is_painted).to be(true)
  end
end
