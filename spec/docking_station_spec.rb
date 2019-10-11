require "docking_station"

describe DockingStation do
  before :each do
    @docking_station = DockingStation.new
  end

  it "successfully instantiates the DockingStation class" do
    expect(@docking_station).to be_kind_of(DockingStation)
  end

  it "DockingStation responds to release_bike" do
    expect(@docking_station).to respond_to(:release_bike)
  end
end
