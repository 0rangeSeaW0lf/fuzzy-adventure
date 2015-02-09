require 'rails_helper'

describe "Parked cars API" do
  it 'receives a list of parked cars' do
    FactoryGirl.create(:vehicle)
    FactoryGirl.create(:vehicle, license_plate: "BT-YV3456")

    get '/admin/vehicles'

    expect(response).to be_success            # test for the 200 status-code
    vehicle_response = JSON.parse(response.body)
    expect(vehicle_response.length).to eq(2) # check to make sure the right amount of messages are returned
  end
end