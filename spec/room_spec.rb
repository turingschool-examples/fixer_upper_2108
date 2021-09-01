require 'rspec'
require './lib/room'

describe Room do

  describe "#initialize" do
    it "creates an instance of Room and has readable attribute category" do
       room = Room.new(:bedroom, 10, "13")

       expect(room).to be_an_instance_of(Room)
       expect(room.category).to eq(:bedroom)
    end
  end

  describe "#area" do
    it "returns the area of the category" do
       room = Room.new(:bedroom, 10, "13")
       expect(room.area).to eq(130)
    end
  end

end
