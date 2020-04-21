require 'rails_helper'

describe "Weather API", :vcr do
  it "get weather report" do
    get '/api/v1/forecast?location=denver,co', params: {}, headers: {'Content-Type': 'application/json', 'Accept': 'application/json'}
		expect(response).to be_successful
		expect(response.body).to include("data")
		expect(response.body).to include("data")
		expect(response.body).to include("current")
		expect(response.body).to include("hourly")
		expect(response.body).to include("daily")
		expect(response.body).to include("weather")
		expect(response.body).to include("image")
	end
end
