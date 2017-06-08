require 'DockingStation.rb'
require 'Bike.rb'

describe DockingStation do



  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }

  describe "#release_bike" do

    it "should return a particular bike" do
      bike = subject.bikes[-1]
      expect(subject.release_bike).to eq(bike)
    end

    it "will return a working bike" do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    context "when the dock is empty" do
      it "should raise an error" do
        subject.bikes=([])
        expect{subject.release_bike}.to raise_error("No bikes are there!")
      end
    end

  end

  describe "#bike" do

    it "allows me to see a docked bike" do
      subject.bikes=([])
      bike = Bike.new
      subject.bikes << bike
      expect(subject.bikes).to eq [bike]
    end
  end


  describe "#dock" do

    it "should dock a bike" do
      subject.bikes.pop
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to include(bike)
    end


    context "when dock is full" do

      before do
        18.times { subject.dock(Bike.new)}
      end

      it "should raise an error" do
        bike = Bike.new
        subject.dock(bike)
        expect{subject.dock(bike)}.to raise_error("Dock is full!")
      end
    end


  end

end
