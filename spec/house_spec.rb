require 'rspec'
require './lib/room.rb'
require './lib/house.rb'

RSpec.describe do
  context 'Iteration 2' do
    before :each do
      @house = House.new("$400000", "123 sugar lane")
      @room_1 = Room.new(:bedroom, 10, '13')
      @room_2 = Room.new(:bedroom, 11, '15')
    end

    it 'exists' do
      expect(@house).to be_a House
    end

    it 'converts price to an integer' do
      expect(@house.price).to eq 400000
    end

    it 'has an address' do
      expect(@house.address).to eq "123 sugar lane"
    end

    it 'has 0 rooms by default' do
      expect(@house.rooms).to eq []
    end

    it 'can add rooms' do
      @house.add_room(@room_1)
      @house.add_room(@room_2)

      expect(@house.rooms).to eq [@room_1, @room_2]
    end
  end

  context 'Iteration 3' do
    before :each do
      @house = House.new("$400000", "123 sugar lane")
      @room_1 = Room.new(:bedroom, 10, '13')
      @room_2 = Room.new(:bedroom, 11, '15')
      @room_3 = Room.new(:living_room, 25, '15')
      @room_4 = Room.new(:basement, 30, '41')
      @house.add_room(@room_1)
      @house.add_room(@room_2)
      @house.add_room(@room_3)
      @house.add_room(@room_4)
    end

    it "knows if it's valuable" do
      expect(@house.above_market_average?).to be false
    end

    it 'can list rooms from a single category' do
      result_1 = @house.rooms_from_category(:bedroom)
      result_2 = @house.rooms_from_category(:basement)

      expect(result_1).to eq [@room_1, @room_2]
      expect(result_2).to eq [@room_4]
    end

    it 'knows the area of the whole house' do
      expect(@house.area).to eq 1900
    end

    it 'can list details' do
      expect(@house.details).to include(
        'price' => 400000,
        'address' => "123 sugar lane"
      )
    end
  end

  context 'Iteration 4' do
    before :each do
      @house = House.new("$400000", "123 sugar lane")
      @room_1 = Room.new(:bedroom, 10, '13')
      @room_2 = Room.new(:bedroom, 11, '15')
      @room_3 = Room.new(:living_room, 25, '15')
      @room_4 = Room.new(:basement, 30, '41')
      @house.add_room(@room_4)
      @house.add_room(@room_1)
      @house.add_room(@room_3)
      @house.add_room(@room_2)
    end

    it 'calculates price per square foot' do
      expect(@house.price_per_square_foot).to eq 210.53
    end

    it 'sorts rooms by area' do
      result = @house.rooms_sorted_by_area

      expect(result).to eq [@room_4, @room_3, @room_2, @room_1]
    end

    it 'sorts rooms by category' do
      result = @house.rooms_by_category

      expect(result).to include(
        :bedroom => [@room_1, @room_2],
        :living_room => [@room_3],
        :basement => [@room_4]
      )
    end
  end
end
