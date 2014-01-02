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

  describe "::valid_number?" do
    it "should be true if passed a valid number" do
      expect(Controller.valid_number?("10")).to eq(true)
    end

    it "should be false if not passed a valid number" do
      expect(Controller.valid_number?("1.1")).to eq(false)
      expect(Controller.valid_number?("1,000")).to eq(false)
      expect(Controller.valid_number?("string")).to eq(false)
    end
  end

  describe "::starting_date" do
    it "should return the valid starting date" do
      STDIN.should_receive(:gets).and_return("01/01")
      expect(Controller.starting_date).to eq("01/01")
    end
  end

  describe "::number_to_add" do
    it "should return the valid integer to add" do
      STDIN.should_receive(:gets).and_return("10")
      expect(Controller.number_to_add).to eq(10)
    end
  end

  describe "::print_new_date" do
    it "should return the new_date from View" do
      expect(Controller.print_new_date([1,10])).to eq("1/10")
    end
  end

  describe "::get_calendar" do
    it "should return a calendar hash" do
      expect(Controller.get_calendar(1, 10)).to eq({1 => 31})
    end
  end

  describe "::get_date" do
    it "should return a Day object" do
      expect(Controller.get_date("1/10", 10)).to be_a(Day)
    end
  end
end