require "rails_helper"

describe "API Messages" do
  it 'returns a list of all vehicles' do
    bmw_x5 = FactoryGirl.create(:vehicle)
    audi_a8 = FactoryGirl.create(:vehicle, license_plate: "M-RZ5674", vehicle_type: "car")
    harley = FactoryGirl.create(:vehicle, license_plate: "B-AD3456", vehicle_type: "motorcycle")

    get 'api/v1/admin/places'

    expect(response).to be_success            # test for the 200 status-code
    vehicles = JSON.parse(response.body, symbolize_names: true)
    names = vehicles.collect {|p| p[:name]}
    expect(names).to include("De Kaas")
    expect(names).not_to include("Avila Tei")
  end
end