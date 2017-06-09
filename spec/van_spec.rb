require "docking_station.rb"
require "bike.rb"
require "van.rb"

describe Van do
  let(:van) {Van.new}

  it "responds to take_bike method" do
    expect(van).to respond_to :take_bike
  end

  it "takes broken bikes" do
    bike = double(:bike, working?: false)
    attr_accessor :bikes
    class DockingStationDouble
      @bikes = []
    end

  end

end
