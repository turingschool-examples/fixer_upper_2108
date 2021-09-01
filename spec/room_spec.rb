require './lib/room.rb'

RSpec.describe Room do
  context 'Iteration 1' do
    it "exists" do
      room = Room.new(:bedroom, 10, "13")

      expect(room).to be_a(Room)
    end

    it "has a category" do
      room = Room.new(:bedroom, 10, "13")

      expect(room.category).to eq(:bedroom)
    end

    it "can calculate its area" do
      room = Room.new(:bedroom, 10, "13")

      expect(room.area).to eq(130)
    end

    it "can tell whether or not the room is painted" do
      room = Room.new(:bedroom, 10, "13")

      expect(room.is_painted?).to eq(false)
    end

    it "can paint the room" do
      room = Room.new(:bedroom, 10, "13")
      room.paint

      expect(room.is_painted?).to eq(true)
    end
  end
end
