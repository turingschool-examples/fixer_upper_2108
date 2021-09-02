require './lib/room'

RSpec.describe Room do
  it 'exists' do
    room = Room.new(:bedroom, 10, "13")

    expect(room).to be_a(Room)
  end

  it 'has a category' do
    room = Room.new(:bedroom, 10, "13")

    expect(room.category).to eq(:bedroom)
  end

  it 'has a width' do
    room = Room.new(:bedroom, 10, "13")

    expect(room.width).to eq(10)
  end

  it 'has an area' do
    room = Room.new(:bedroom, 10, "13")

    expect(room.area).to eq(130)
  end

  it 'starts out not painted' do
    room = Room.new(:bedroom, 10, "13")

    expect(room.is_painted?).to eq(false)

    room.paint

    expect(room.is_painted?).to eq(true)
  end
end
