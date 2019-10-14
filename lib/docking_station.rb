require "bike"

class DockingStation
  attr_reader :bikes

  def initialize(cap = 6)
    @bikes = [1]
    @capacity = cap
  end

  def release_bike
    # result = @bikes.empty? ? (raise "No Bikes") : Bike.new
    # result
    raise "No Bikes Available" if @bikes.empty?
    @bikes.pop
    return Bike.new
  end

  def dock_bike(bike)
    raise "No space available" if @bikes.length == @capacity
    @bikes << bike
  end
end
