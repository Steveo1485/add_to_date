require 'spec_helper'

describe Day do
  before(:each) do
    @test_day = Day.new('1/1', 10)
  end

  describe "on initialization" do
    it "should be a Day" do
      @test_day.should be_a Day
    end
  end

  describe "#given_date_string?" do
    it "should return true if @given_date is a string" do
      expect(@test_day.given_date_string?).to eq(true)
    end

    it "should return false if @given_date is not a string" do
      not_string = Day.new(11, 10)
      expect(not_string.given_date_string?).to eq(false)
    end
  end
end