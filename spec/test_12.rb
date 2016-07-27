require_relative 'spec_helper'

describe Barracks do 

  before :each do
    @barracks = Barracks.new
    @footman = Footman.new
  end

 describe "#damage" do
    it "should receive half damage from footman" do
      @footman.attack!(@barracks)
      expect(@barracks.health_points).to eq(495)
    end
  end
end


# expect(@footman).to receive(:health_points).and_return(0)

# or

# @footman.damage(Footman.HEALTH_POINTS)


