require "./lib/bike.rb"

class DockingStation

  attr_accessor :bike

  def release_bike
    raise "No bikes available" unless @bike
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
