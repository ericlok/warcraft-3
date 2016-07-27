require_relative 'spec_helper'

describe Unit do 

  before :each do 
    @unit = Unit.new(100, 10)
  end

  describe "#dead?" do 
    it "should return true if unit's health points are at 0" do
      expect(@unit).to receive(:health_points).and_return(0)
      expect(@unit.dead?).to be true
    end

    it "return false if unit health is greater than 0" do
      expect(@unit.dead?).to be false
    end
  end
  
end




