require_relative 'Bike.rb'

class DockingStation

  attr_accessor :bikes

 DEFAULT_CAPACITY = 20

  def initialize
    @bikes = [Bike.new]
  end

  def release_bike
    fail "No bikes are there!" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock is full!" if full?
    self.bikes << bike
  end

private

  def full?
    self.bikes.length == DEFAULT_CAPACITY
  end

  def empty?
    self.bikes.empty?
  end

end
