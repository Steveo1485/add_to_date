require 'spec_helper'

describe Controller do
  before(:each) do
    @test_controller = Controller.new
  end

  describe "on initialization" do
    it "should be a Controller" do
      expect(@test_controller).to be_a(Controller)
    end
  end

  describe "::valid_date_format?" do
    it "should be true if passed correctly formatted date" do
      expect(Controller.valid_date_format?("01/01")).to eq(true)
    end

    it "should be false if passed incorrectly formatted date" do
      expect(Controller.valid_date_format?("01/32")).to eq(false)
    end
  end
end