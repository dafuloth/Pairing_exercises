require_relative 'bike'

class DockingStation
  attr_reader :bike


  def initialize()
    @bikes = []
  end

  def release_bike
    #fail "no bike is docked" unless @bike.class == Bike 
    if @bike.class != Bike then raise("no bike is docked") end
    @bike
  end

  def dock_bike(bike)
    fail "Cannot dock. Dock occupied." if @bike
    @bike = bike
  end
end
