require "./lib/bike.rb"

class DockingStation

  attr_reader :bike

  def empty?
    false
  end

  def release_bike
    @bike = Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end

end
