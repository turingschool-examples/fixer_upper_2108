require './lib/room'

RSpec.describe Room do

  it 'exists' do

  room = Room.new(:bedroom, 10, "13")
  expect(room).to be_instance_of(Room)
  end

  it 'has a category' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.category).to eq(:bedroom)
  end

  it 'returns area' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.area).to eq(130)
  end

end
