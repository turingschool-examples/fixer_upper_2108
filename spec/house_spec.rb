require 'rspec'
require './lib/room'
require '.lib/house'

RSpec.describe House do
  it "is an instance of house" do
    house = House.new(:bedroom, 10, "13")

    expect(house).to be_a(House)
  end
