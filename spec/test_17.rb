require_relative 'spec_helper'

describe Barracks do 

  before :each do 
    @barracks = Barracks.new
    @siege_engine = Siege_engine.new
  end

  describe "damage" do 
    it "should receive double damage from siege engine" do 
      @siege_engine.attack!(@barracks)
      expect(@barracks.health_points).to eq(400)
    end
  end
end