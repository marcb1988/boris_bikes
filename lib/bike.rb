require "docking_station"
require "ven"

class Bike
  attr_accessor :working

  def initialize
    @working = true
  end

  def working?
    @working
  end
end
