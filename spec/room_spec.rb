require './lib/room'

RSpec.describe Room do
  it "exists" do
    room = Room.new(:bedroom, 10, "13")

    expect(room).to be_an_instance_of(Room)
  end

  it "returns a category" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.category).to eq(:bedroom)
  end

  it "returns an area" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.area).to eq(130)
  end

  it "paints the room" do
    room = Room.new(:bedroom, 10, "13")

    expect(room.is_painted?).to eq(false)
    room.paint
    expect(room.is_painted?).to eq(true)
  end
end
