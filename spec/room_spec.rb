require './lib/room.rb'

RSpec.describe Room do
  it "exists" do
    room = Room.new(:bedroom, 10, "13")

    expect(room).to be_an_instance_of(Room)
  end

  it "can tell you the category of room" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.category).to eq(:bedroom)
  end

  it "can tell you the area of the room" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.area).to eq(130)
  end

  it "can tell you if its painted or not" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.is_painted).to be(false)
  end

  it "can paint a room" do
    room = Room.new(:bedroom, 10, "13")
    room.paint
    expect(room.is_painted).to eq(true)
  end

end
