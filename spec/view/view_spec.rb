require 'spec_helper'

describe View do

  describe "::get_start_date" do
    it "should ask for and return a starting date string" do
      STDIN.should_receive(:gets).and_return("01/01")
      expect(View.get_start_date).to eq('01/01')
    end
  end

  describe "::start_date_error" do
    it "should return the error message" do
      expect(View.start_date_error).to eq("Please try again. Be sure the date is correct and in [m]m/[d]d format.")
    end
  end

  describe "::get_number_of_days" do
    it "should ask for and return a string of days to add" do
      STDIN.should_receive(:gets).and_return("10")
      expect(View.get_number_of_days).to eq("10")
    end
  end

  describe "::number_error" do
    it "should return the error message" do
      expect(View.number_error).to eq("Please try again. Make sure your number is an integer and not a float.")
    end
  end

  describe "::new_date" do
    it "should print a string of a new date" do
      expect(View.new_date([1, 11])).to eq("Your calculated date is: 1/11")
    end
  end
end
