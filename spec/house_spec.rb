require 'rspec'
require './lib/room'
require './lib/house'

describe 'house' do
  describe '#initialize' do
    it 'has a price' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.price).to eq("$400000")
    end

    it 'has an address' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.address).to eq("123 sugar lane")
    end

    it 'has an array of empty rooms' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.rooms).to eq([])
    end
  end
end
