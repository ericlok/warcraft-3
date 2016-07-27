require_relative 'spec_helper'

describe Unit do

  before :each do 
    @unit = Unit.new(100, 10)
  end

  describe "#ignore_dead" do 
    it "should not attack when enemy health is 0" do
      @new_unit = Unit.new(0, 0)
      expect(@unit.attack!(@new_unit)).to be false
    end    
  end

end

