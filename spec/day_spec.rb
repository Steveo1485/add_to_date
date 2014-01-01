require 'spec_helper'

describe Day do
  before(:each) do
    @test_day = Day.new('01/01', 10)
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

  describe "#number_an_integer?" do
    it "should return true if @num_to_add is an integer" do
      expect(@test_day.number_an_integer?).to eq(true)
    end

    it "should return false if @num_to_add is not an integer" do
      not_integer = Day.new('1/1', 1.0)
      expect(not_integer.number_an_integer?).to eq(false)
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