require "bike"
require "ven"

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :bikes
  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No Bikes Available" if empty?
    working_bikes = @bikes.select { |bike| bike.working? }
    raise "No Working Bikes Available" if working_bikes.empty?
    bike = working_bikes.pop
    @bikes.delete(bike)
    return bike
  end

  def dock_bike(bike, broken = false)
    raise "No space available" if full?
    if broken
      bike.working = false
    end
    @bikes << bike
  end

  private

  def full?
    return @bikes.length >= @capacity
  end

  def empty?
    return @bikes.empty?
  end
end
