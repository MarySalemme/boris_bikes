require "docking_station.rb"

describe DockingStation do
  let(:docking_station) { DockingStation.new}

  it "responds to release_bike" do
    expect(docking_station).to respond_to :release_bike
  end
  
end
