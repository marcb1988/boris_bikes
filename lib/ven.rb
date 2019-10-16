require "docking_station"
require "bike"

class Van
  DEFAULT_CAPACITY = 4
  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @van_contents = []
    @capacity = capacity
  end

  def pick_up_broken
    p @bikes
    @bikes.map do |bike|
      if bike.working? == false && @van_contents.count < @capacity
        @van_contents << bike
      end
    end
  end

  def drop_off_broken
  end

  def pick_up_fixed
  end

  def drop_off_fixed
  end
end
