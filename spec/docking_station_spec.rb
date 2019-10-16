require "docking_station"
require "bike"

describe DockingStation do
  before :each do
    @docking_station = DockingStation.new
  end

  it "successfully instantiates the DockingStation class" do
    expect(@docking_station).to be_instance_of(DockingStation)
  end

  it "DockingStation responds to release_bike" do
    expect(@docking_station).to respond_to(:release_bike)
  end

  it "DockingStation can release a bike" do
    @docking_station.dock_bike(Bike.new)
    expect(@docking_station.release_bike).to be_instance_of Bike
  end

  it "release_bike returns error if @bikes is empty" do
    @docking_station.dock_bike(Bike.new)
    @docking_station.release_bike
    expect { @docking_station.release_bike }.to raise_error("No Bikes Available")
  end

  it "DockingStation responds to dock_bike" do
    expect(@docking_station).to respond_to(:dock_bike)
  end

  it "DockingStation can dock a bike" do
    bike = Bike.new
    @docking_station.dock_bike(bike)
    expect(@docking_station.bikes).to include(bike)
  end

  it "rejects bike docking if capacity full" do
    DockingStation::DEFAULT_CAPACITY.times { @docking_station.dock_bike(Bike.new) }
    expect { @docking_station.dock_bike(Bike.new) }.to raise_error("No space available")
  end

  it "sets default capacity to DEFAULT_CAPACITY if no parameters are passed to DockingStation.new" do
    docking_station = DockingStation.new
    expect(docking_station.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end

  it "should report bike broken when I return it" do
    bike = Bike.new
    @docking_station.dock_bike(bike, true)
    expect(bike.working?).to be false
  end

  let(:bike) { double :bike }
  it "does not release a broken bike" do
    # bike = Bike.new
    allow(bike).to receive(:working?).and_return(false)
    subject.dock_bike(bike)
    expect { subject.release_bike }.to raise_error("No Working Bikes Available")
  end
end
