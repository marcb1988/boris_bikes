require "bike"

describe Bike do
  before :each do
    @bike = Bike.new
  end

  it { is_expected.to be_kind_of(Bike) }

  it { is_expected.to respond_to(:working?) }

  it "bike is working" do
    expect(@bike.working?).to be_truthy
  end
end
