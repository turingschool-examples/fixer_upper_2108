require 'rspec'
require './lib/room'

RSpec.describe Room do
  it "exists" do
    room = Room.new(:bedroom, 10, "13")
    expect(room).to be_an_instance_of(Room)
  end

  it "has a category, length and width" do
    expect(room.category).to eq(:bedroom)
    expect(room.length).to eq(10)
    expect(room.width).to eq("13")
  end

  it "can calculate area" do
  room = Room.new(:bedroom, 10, "13")
  expect(room).to be_an_instance_of(Room)
  expect(room.category).to eq(:bedroom)
  expect(room.length).to eq(10)
  expect(room.width).to eq("13")
  expect(room.area).to eq(130)
  end

  it "is not painted" do
  expect(room).to be_an_instance_of(Room)
  expect(room.category).to eq(:bedroom)
  expect(room.length).to eq(10)
  expect(room.width).to eq("13")
  expect(room.area).to eq(130)
  expect(room.is_painted?).to eq(false)
  end

  it "gets painted" do
  expect(room).to be_an_instance_of(Room)
  expect(room.category).to eq(:bedroom)
  expect(room.length).to eq(10)
  expect(room.width).to eq("13")
  expect(room.area).to eq(130)
  expect(room.is_painted?).to eq(false)
  expect(room.paint)
  expect(room.is_painted?).to eq(true)
  end
end 
