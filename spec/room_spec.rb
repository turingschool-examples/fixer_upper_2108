require 'rspec'
require './lib/room'

describe Room do
  it "exists" do
    room = Room.new(:bedroom, 10, "13")

    expect(room).to be_an_instance_of(Room)
    expect(room.category).to eq(:bedroom)
  end

  it "can calculate the room area" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.area).to eq(130)
  end

  it "shows whether room is painted or not" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.is_painted?).to be(false)
  end

  it "can confirm room has been painted" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.paint).to eq(true)
  end
end
