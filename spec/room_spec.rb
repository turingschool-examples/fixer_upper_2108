require 'rspec'
require './lib/room'

RSpec.describe Room do
  it "has attributes" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.category).to eq(:bedroom)
  end

  it "can calculate the area" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.area).to eq(130)
  end

  it "the room can be painted" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.is_painted?).to eq(false)

    room.paint(category)

    expect(room.is_painted?).to eq(true)
  end
end
