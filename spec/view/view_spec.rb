require 'spec_helper'

describe View do

  describe "::get_start_date" do
    it "should ask for a starting date string" do
      STDIN.should_receive(:gets).and_return("01/01")
      expect(View.get_start_date).to eq('01/01')
    end
  end

  describe "::get_number_of_days" do
    it "should ask for a number of days to add" do
      STDIN.should_receive(:gets).and_return(10)
      expect(View.get_number_of_days).to eq(10)
    end
  end
end
