require_relative 'bike'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20
  
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
    (@bikes.count == DEFAULT_CAPACITY) ? (true) : (false)
  end

  def empty?
    (@bikes.empty?) ? (true) : (false)
  end

end
