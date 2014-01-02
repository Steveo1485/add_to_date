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

  describe "::given_date_string?" do
    it "should return true if passed is a string" do
      expect(Day.given_date_string?('01/01')).to eq(true)
    end

    it "should return false if not passed a string" do
      expect(Day.given_date_string?(01/01)).to eq(false)
    end
  end

  describe "::number_an_integer?" do
    it "should return true if passed an integer" do
      expect(Day.number_an_integer?(10)).to eq(true)
    end

    it "should return false if not passed an integer" do
      expect(Day.number_an_integer?("10")).to eq(false)
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
end