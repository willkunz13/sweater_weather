require 'rails_helper'

describe "Items API" do
  it "sends a list of items" do
    get '/api/v1/forecast?location=denver,co', params: {}, headers: {'Content-Type': 'application/json', 'Accept': 'application/json'}
		expect(response).to be_successful
		binding.pry
	end
end
