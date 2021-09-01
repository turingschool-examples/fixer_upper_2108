require 'rspec'
require './lib/room.rb'

RSpec.describe do
  before :each do
    @room = Room.new(:bedroom, 10, "13")
  end

  it 'exists' do
    expect(@room).to be_a Room
  end

  it 'has a readable category' do
    expect(@room.category).to eq :bedroom
  end

  it 'can calculate area' do
    expect(@room.area).to eq 130
  end

  it 'is not painted by default' do
    expect(@room.is_painted?).to eq false
  end

  it 'can be painted' do
    @room.paint

    expect(@room.is_painted?).to eq true
  end
end
