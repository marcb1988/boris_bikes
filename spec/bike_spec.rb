require "bike"

describe Bike do
  before :each do
    @bike = Bike.new
  end

  it "instantiates an instance of the Bike class" do
    expect(@bike).to be_kind_of(Bike)
  end

  it "bike instance responds to working? method" do
    expect(@bike).to respond_to(:working?)
  end

  it "bike is working" do
    expect(@bike.working?).to be_truthy
  end
end
