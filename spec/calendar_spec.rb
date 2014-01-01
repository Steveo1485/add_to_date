require 'spec_helper'

describe Calendar do
  before(:each) do
    @test_cal = Calendar.new
  end

  describe "#days_in_month" do
    it "should return an integer for the number of days in a passed month" do
      expect(@test_cal.days_in_month(1)).to eq(31)
    end
  end

  describe "#generate_calendar" do
    it "should return a hash containing a calendar covering given days" do
      expect(@test_cal.generate_calendar(1, 70)).to eq({ 1 => 31, 2 => 28, 3 => 31 })
    end
  end
end