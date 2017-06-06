require "docking_station.rb"
require "bike.rb"

describe DockingStation do
  let(:docking_station) { DockingStation.new}

  it "responds to release_bike" do
    expect(docking_station).to respond_to :release_bike
  end

  it "gets a bike and expects it to be working" do
    bike = docking_station.release_bike
    expect(bike).to be_working 
  end

end
