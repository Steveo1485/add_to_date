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
end