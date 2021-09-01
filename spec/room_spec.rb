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

  describe "is_painted?" do
    it "boolean method that should default as false" do
      room = Room.new(:bedroom, 10, "13")

      expect(room.is_painted?).to eq(false)
    end
  end

  describe '#paint' do
    it "sets @is_painted attribute to true" do
      room = Room.new(:bedroom, 10, "13")
      room.paint

      expect(room.is_painted?).to eq(true) 
    end
  end

end
