# <<<<<<< HEAD
# require 'docking_station.rb'
#
# describe DockingStation do
#   it { is_expected.to respond_to :release_bike}
#
#   describe "#release_bike" do
#     it "releases working bikes" do
#       bike = Bike.new
#       subject.dock(bike)
#       expect(subject.release_bike).to eq bike
#     end
#
#     it "won't release a bike if none available" do
#       expect {subject.release_bike}.to raise_error("No bikes available")
#     end
#   end
#
#   it { is_expected.to respond_to(:dock).with(1).argument}
#
#   it { is_expected.to respond_to(:bike) }
#
#   it "docks something" do
#       bike = Bike.new
#       expect(subject.dock(bike)).to eq bike
#   end
#
#   it "returns docked bikes" do
#     bike = Bike.new
#     subject.dock(bike)
#     expect(subject.bike).to eq bike
#   end
#
# =======
require "docking_station.rb"
require "bike.rb"

describe DockingStation do
  let(:docking_station) { DockingStation.new}

  it "gets a bike and expects it to be working" do
    bike = Bike.new
    docking_station.dock(bike)
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

describe "#dock_bike" do
  it "docks a bike" do
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq bike
  end


  it "won't dock a bike if there is already one docked" do
      docking_station.dock(Bike.new)
    expect{docking_station.dock(Bike.new)}.to raise_error("Bike already docked")
  end
end

  describe "#release_bike" do
    it "can release a bike if there is a bike available" do
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.release_bike).to eq bike
    end

    it "won't release a bike if there are none available" do
      expect{(docking_station.release_bike)}.to raise_error("No bikes available")
    end
  end
end
