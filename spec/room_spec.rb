require './lib/room'

describe '#Room' do
  it 'describes a room' do
     room = Room.new(:bedroom, 10, "13")
     expect(room).to be_a(Room)
  end

  it '#area' do
    room = Room.new(:bedroom, 10, "13")
    expect(room).to be_a(Room)
    expect(room.area).to eq(130)
  end

  it '#is_painted?' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.is_painted?).to eq(false)
  end

  it '#paint' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.paint).to eq(true)
  end
end
