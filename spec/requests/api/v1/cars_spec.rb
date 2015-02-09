describe "Parked cars API" do
  it 'sends a list of parked cars' do
    FactoryGirl.create(:vehicle)

    get '/api/v1/cars'

    expect(response).to be_success            # test for the 200 status-code
    json = JSON.parse(response.body)
    expect(json['cars'].length).to eq(1) # check to make sure the right amount of messages are returned
  end
end