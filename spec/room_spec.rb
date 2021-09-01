require './lib/room'

RSpec.describe Room do

describe '#initialize' do
  it 'exists' do
  room = Room.new(:bedroom, 10, "13")
  expect(room).to be_instance_of(Room)
  end

  it 'has a category' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.category).to eq(:bedroom)
  end

  it 'has a length' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.length).to eq(10)
  end

  it 'has a width' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.width).to eq("13")
  end
end

describe '#area' do
    it 'returns area' do
      room = Room.new(:bedroom, 10, "13")
      expect(room.area).to eq(130)
    end

    it 'can return a different area' do
      room = Room.new(:bedroom, 9, "10")
      expect(room.area).to eq(90)
    end
end

describe '#is_painted?' do
  it 'is not painted by default' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.is_painted?).to eq(false)
  end
end

describe '#paint' do
  it 'can become painted' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.is_painted?).to eq(false)
    room.paint
    expect(room.is_painted?).to eq(true)
  end
end

end
