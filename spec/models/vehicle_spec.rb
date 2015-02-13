require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  context "car enter the parking lot" do
    it "checks fields the license place is not empty" do
      expect(FactoryGirl.build(:vehicle, license_plate: "")).not_to be_valid
    end
    it "checks fields the type is not empty" do
      expect(FactoryGirl.build(:vehicle, vehicle_type: "")).not_to be_valid
    end
    it "checks both fields are not empty" do
      expect(FactoryGirl.build(:vehicle, license_plate: "", vehicle_type: "")).not_to be_valid
    end
    it "checks license place has a minimum length of 6 characters" do
      expect(FactoryGirl.build(:vehicle, license_plate: "", vehicle_type: "")).not_to be_valid
    end
    it "checks the vehicle type is either car or motorcycle" do
      expect(FactoryGirl.build(:vehicle, vehicle_type: "Bike")).not_to be_valid
      expect(FactoryGirl.build(:vehicle, vehicle_type: "car")).to be_valid
      expect(FactoryGirl.build(:vehicle, license_plate: "B-DF5734", vehicle_type: "motorcycle")).to be_valid
    end
  end
end
