require "docking_station"
require "bike"
require "ven"

describe Van do
  before :each do
    @van = Van.new
    @docking_station = DockingStation.new
    # @docking_station.dock_bike(Bike.new, true)
    # @docking_station.dock_bike(Bike.new)
  end

  it "picks up broken bikes" do
    # bike = Bike.new
    # @docking_station.dock_bike(bike, true)
    # @docking_station.dock_bike(bike)
    @docking_station.dock_bike(Bike.new)
    @van.pick_up_broken
    expect(@van_contents).to include(!bike.working?)
  end

  it "delivers broken bikes to garage" do
  end

  it "picks up fixed bikes from garage" do
  end

  it "delivers fixed bikes to DockingStation" do
  end
end
