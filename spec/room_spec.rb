require 'rspec'
require './lib/room'

RSpec.describe Room do

  room = Room.new(:bedroom, 10, "13")


  it "can make a new room with attributes" do
    expect(room.category).to eq(:bedroom)
    expect(room.length).to eq(10)
  end

  it "can calculate the area" do
    expect(room.area).to eq(130)
  end

  it "can paint the room and also check if the room is painted" do


    expect(room.is_painted?).to be false

    room.paint

    expect(room.is_painted?).to be true
  end
end
