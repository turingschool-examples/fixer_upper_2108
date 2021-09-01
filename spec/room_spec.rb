require 'rspec'
require './lib/room'

describe 'iteration 1' do
  it 'can be a room' do
    room = Room.new(:bedroom, 10, "13")

    expect(room.category).to eq(:bedroom)
    expect(room.length).to eq(10)
    expect(room.width).to eq("13")
  end

  it 'has an area' do
    room = Room.new(:bedroom, 10, "13")

    expect(room.area).to eq(130)
  end

  it 'is not painted by default' do
    room = Room.new(:bedroom, 10, "13")

    expect(room.is_painted?).to be(false)
  end

  it 'can be painted' do
    room = Room.new(:bedroom, 10, "13")

    expect(room.paint).to be(true)
  end
end
