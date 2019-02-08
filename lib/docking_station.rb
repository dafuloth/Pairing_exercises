require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize()
    @bikes = []
  end

  def release_bike
    #fail "no bike is docked" unless @bike.class == Bike 
    raise("no bike is docked") if empty?
    @bikes.pop()
  end

  def dock_bike(bike)
    fail "Cannot dock. Dock occupied." if full?
    @bikes.push(bike)
  end

  private
  
  def full?
    (@bikes.count == 20) ? (true) : (false)
  end

  def empty?
    (@bikes.empty?) ? (true) : (false)
  end

end
