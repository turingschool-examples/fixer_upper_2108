require "./lib/room"
require "Rspec"

describe Room do
    describe "#itialize" do
        it "is an instance of Room" do
            room = Room.new(:bedroom, 10, "13")

            expect(room).to be_a Room
        end

        it "has variables" do
            room = Room.new(:bedroom, 10, "13")

            expect(room.category).to eq :bedroom
            expect(room.length).to eq 10
            expect(room.width).to eq "13"
        end
    end

    describe "#area"do
        it "calculates area" do
            room = Room.new(:bedroom, 10, "13")

            expect(room.area).to eq 130
        end
    end

    describe "#paint" do
        it "paints the room" do
            room = Room.new(:bedroom, 10, "13")

            expect(room.is_painted?).to be false

            room.paint

            expect(room.is_painted?).to be true
        end
    end
end