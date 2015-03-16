require_relative "../../lib/airplane"
require 'pry'
describe Airplane do
  let(:my_plane) { Airplane.new("cesna", 10, horsepower) }
  let(:horsepower) { 150 }

  describe "#initialization" do
    it "initializes an Airplane object" do
      expect(Airplane.new("cesna", 10, 150)).to be_a(Airplane)
    end

    it "sets the type attribute" do
      expect(my_plane.type).to eq("cesna")
    end

    it "sets the wing_loading attribute" do
      expect(my_plane.wing_loading).to eq(10)
    end

    it "sets the horsepower attribute" do
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    context "plane is not started" do
      it "successfully start the plane" do
        expect(my_plane.start).to eq("airplane started")
      end

      it "change plane status to running" do
        my_plane.start

        expect(my_plane.running).to eq(true)
      end
    end

    context "plane is already started" do
      it "tells us that plane is already started" do
        my_plane.start

        expect(my_plane.start).to eq("airplane already started")
      end
    end
  end

  describe "#takeoff" do

    context "fuel is low" do

    end

    context "plane is not started" do
      it "tells us to start the plane" do
        expect(my_plane.takeoff).to eq("airplane not started, please start")
      end
    end

    context "plane is already started" do
      it "launch successfully" do
        my_plane.start

        expect(my_plane.takeoff).to eq("airplane launched")
      end

      it "changes plane status to flying" do
        my_plane.start
        my_plane.takeoff

        expect(my_plane.flying).to eq(true)
      end
    end

    context "plane is already flying" do
      it "tells us the plane is already flying" do
        my_plane.start
        my_plane.takeoff

        expect(my_plane.takeoff).to eq("airplane already launched")
      end
    end
  end

  describe "testing different let statements" do
    context "normal horsepower" do
      it "has normal horsepower" do
        expect(my_plane.horsepower).to eq(150)
      end
    end

    context "super high horsepower plane" do
      let(:horsepower) { 5000 }
      it "has superpower hp" do
        expect(my_plane.horsepower).to eq(5000)
      end
    end
  end


end
