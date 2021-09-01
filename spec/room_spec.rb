require './lib/room'


RSpec.describe Room do

  it 'exists' do
    room = Room.new(:bedroom, 10, "13")
    expect(room).to be_a(Room)
  end

  it 'has attributes' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.category).to eq(:bedroom)
  end

  it 'can figure out area' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.area).to eq(130)
  end

  it 'is not painted by default' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.is_painted?).to eq(false)
  end

  it 'can be painted' do
    room = Room.new(:bedroom, 10, "13")
    room.paint
    expect(room.is_painted?).to eq(true)
  end
end
