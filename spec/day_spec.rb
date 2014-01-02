require 'spec_helper'

describe Day do
  before(:each) do
    @test_day = Day.new('01/01', 10)
  end

  describe "on initialization" do
    it "should be a Day" do
      expect(@test_day).to be_a(Day)
    end
  end

  describe "#get_day" do
    it "should return an integer of given day" do
      expect(@test_day.get_day).to eq(1)
    end
  end

  describe "#get_month" do
    it "should return an integer of given month" do
      expect(@test_day.get_month).to eq(1)
    end
  end

  describe "#calculate_day" do
    it "should return an array containing the new date" do
      expect(@test_day.calculate_day(10, [{ 1 => 31 }])).to eq([1, 10])
    end
  end

  describe "#total_days" do
    it "should return the sum of the start day and the days to add" do
      expect(@test_day.total_days(10, 10)).to eq(20)
    end
  end
end