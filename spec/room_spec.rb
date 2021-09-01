require 'rspec'
require './lib/room'
require './lib/house'

RSpec.describe Room do

  it 'is an instance of' do
    room = Room.new(:bedroom, 10, "13")
    expect(room).to be_an_instance_of(Room)
  end

  it 'is a bedroom' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.category).to eq(:bedroom)
  end

  it 'area' do
    room = Room.new(:bedroom, 10, "13")
    expect(room.area).to eq(130)
  end 

end
