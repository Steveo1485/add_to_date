require 'spec_helper'

describe View do

  describe "::get_start_date" do
    it "should ask for a starting date string" do
      STDIN.should_receive(:gets).and_return("01/01")
      expect(View.get_start_date).to eq('01/01')
    end
  end
end
