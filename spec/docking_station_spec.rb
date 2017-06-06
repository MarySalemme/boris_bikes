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

  it "docks a bike" do
    bike = Bike.new
    expect(docking_station.dock_bike(bike)).to eq bike
  end

  it "checks if there is an available bike" do
    expect(docking_station).not_to be_empty
  end
end
