require 'rspec'
require './lib/room'

RSpec.describe Room do
  it 'exists' do
    room = Room.new(:bedroom, 10, "13")
    expect(room).to be_an_instance_of(Room)
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

  it 'has an area' do
    room = Room.new(:bedroom, 10, "13")
    room.area
    expect(room.area).to eq(130)
  end

  it 'starts unpainted' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.is_painted?). to eq(false)
  end

  it 'gets painted' do
    room = Room.new(:bedroom, 10, "13")
    room.paint
    expect(room.is_painted?). to eq(true)
  end

end
