require "bike"

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    result = @bikes.empty? ? (raise "No Bikes") : Bike.new
    result
  end

  def dock_bike(bike)
    @bikes << bike
  end
end
