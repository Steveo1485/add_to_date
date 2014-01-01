require 'spec_helper'

describe Day do
  before(:each) do
    @test_day = Day.new
  end

  it "should be a Day" do
    @test_day.should be_a Day
  end
end