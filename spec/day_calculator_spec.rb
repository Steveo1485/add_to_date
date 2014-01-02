require 'spec_helper'

describe Controller do
  context "::run" do
    it "should run the program and return the correct result" do
      STDIN.should_receive(:gets).and_return("01/01")
      STDIN.should_receive(:gets).and_return("1")
      expect(Controller.run).to eq("Your calculated date is: 01/02")
    end
  end

  context "::valid_date_format?" do
    it "should be true if passed correctly formatted date" do
      expect(Controller.valid_date_format?("01/01")).to eq(true)
      expect(Controller.valid_date_format?("1/1")).to eq(true)
      expect(Controller.valid_date_format?("01/1")).to eq(true)
      expect(Controller.valid_date_format?("1/01")).to eq(true)
    end

    it "should be false if passed incorrectly formatted date" do
      expect(Controller.valid_date_format?("Jan 7")).to eq(false)
      expect(Controller.valid_date_format?("1/1/13")).to eq(false)
      expect(Controller.valid_date_format?("01/32")).to eq(false)
      expect(Controller.valid_date_format?("13/1")).to eq(false)
      expect(Controller.valid_date_format?("001/001")).to eq(false)
    end
  end

  context "::valid_number?" do
    it "should be true if passed a valid number" do
      expect(Controller.valid_number?("10")).to eq(true)
    end

    it "should be false if not passed a valid number" do
      expect(Controller.valid_number?("1.1")).to eq(false)
      expect(Controller.valid_number?("1,000")).to eq(false)
      expect(Controller.valid_number?("string")).to eq(false)
    end
  end

  context "::starting_date" do
    it "should return the valid starting date" do
      STDIN.should_receive(:gets).and_return("01/01")
      expect(Controller.starting_date).to eq("01/01")
    end
  end

  context "::number_to_add" do
    it "should return the valid integer to add" do
      STDIN.should_receive(:gets).and_return("10")
      expect(Controller.number_to_add).to eq(10)
    end
  end

  context "::print_new_date" do
    it "should return the new_date from View" do
      expect(Controller.print_new_date([1,10])).to eq("Your calculated date is: 1/10")
    end
  end

  context "::get_calendar" do
    it "should return an array containing calendar hashes" do
      expect(Controller.get_calendar(1, 10)).to eq([{1 => 31}])
      expect(Controller.get_calendar(12, 32)).to eq([{12 => 31}, {1=>31}])
    end
  end

  context "::get_date" do
    it "should return a Day object" do
      expect(Controller.get_date("1/10", 10)).to be_a(Day)
    end
  end

  context "::format_result" do
    it "should format the result in the same style as the input" do
      expect(Controller.format_result("01/01", ["1", "1"])).to eq(["01", "01"])
      expect(Controller.format_result("1/1", ["1", "1"])).to eq(["1", "1"])
      expect(Controller.format_result("01/1", ["1", "1"])).to eq(["01", "1"])
      expect(Controller.format_result("1/01", ["1", "1"])).to eq(["1", "01"])
    end
  end

  context "::day_calculator" do
    it "should return the correct day when passed a starting date and number to add" do
      expect(Controller.day_calculator("01/01", 1)).to eq("01/02")
      expect(Controller.day_calculator("12/31", 1)).to eq("1/1")
      expect(Controller.day_calculator("8/10", 100)).to eq("11/18")
      expect(Controller.day_calculator("7/04", 365)).to eq("7/04")
      expect(Controller.day_calculator("02/12", 891)).to eq("07/23")
      expect(Controller.day_calculator("8/10", 144)).to eq("1/1")
      expect(Controller.day_calculator("9/30", 863)).to eq("2/10")
      expect(Controller.day_calculator("4/15", 109)).to eq("8/2")
      expect(Controller.day_calculator("7/23", 40)).to eq("9/1")
    end
  end
end