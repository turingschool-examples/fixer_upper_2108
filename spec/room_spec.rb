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
end
