require_relative 'bike'

class DockingStation
  attr_reader :bikes


  def initialize()
    @bikes = []
  end

  def release_bike
    #fail "no bike is docked" unless @bike.class == Bike 
    raise("no bike is docked") if @bikes.empty?
    @bikes.pop()
  end

  def dock_bike(bike)
    fail "Cannot dock. Dock occupied." if @bikes.count == 20
    @bikes.push(bike)
  end
end
