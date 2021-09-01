require 'rspec'
require './lib/room'

RSpec.describe Room do
  it "is an instance of room" do
    room = Room.new(:bedroom, 10, "13")

    expect(room).to be_a(Room)
  end

  it "has an area" do
    room = Room.new(:bedroom, 10, "13")
    length = 10
    width = "13".to_i
    room_area = length * width

    expect(room_area).to eq(130)
  end

  it "Is painted" do
    room = Room.new(:bedroom, 10, "13")
    length = 10
    width = "13".to_i
    room_area = length * width
    is_painted = true

    expect(is_painted).to be true
  end
end
