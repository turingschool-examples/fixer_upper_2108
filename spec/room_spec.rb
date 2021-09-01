require './lib/room'

RSpec.describe 'Room' do
  it 'exists' do
    room = Room.new(:bedroom, 10, "13")

    expect(room.category).to eq(:bedroom)
    expect(room.area).to eq(130)
    expect(room.is_painted?).to eq(false)

  end

  it ' paints the house' do
    room = Room.new(:bedroom, 10, "13")
    room.paint
    expect(room.is_painted?).to eq(true)
  end
end
