require 'rspec'
require './lib/room/'
require 'pry'

RSpec.describe Room do

  it "exists" do

    room = Room.new(:bedroom, 10, "13")

    expect(room.category).to eq(:bedroom)
    expect(room.area).to eq(130)
  end

  it "can calculate area" do

    room = Room.new(:bedroom, 10, "13")

    expect(room.area).to eq(130)
  end


  it "can paint a room" do

    room = Room.new(:bedroom, 10, "13")

    expect(room.is_painted?).to be false
    room.paint
    expect(room.is_painted?).to be true
  end


end
