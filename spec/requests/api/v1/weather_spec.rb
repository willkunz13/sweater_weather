require 'rails_helper'

describe "Items API", :vcr do
  it "sends a list of items" do
    get '/api/v1/forecast?location=denver,co', params: {}, headers: {'Content-Type': 'application/json', 'Accept': 'application/json'}
		expect(response).to be_successful
		weather = JSON.parse(response.body, symbolize_names: true)
		expect(weather[:data][:attributes][:image]).to eq("https://images.unsplash.com/photo-1584289537592-2d14b39c5162?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyODQ2Nn0")
		expect(weather[:data][:attributes][:current][:temp]).to eq(286.15)	
		expect(weather[:data][:attributes][:current][:sunrise]).to eq(1587298532)
		expect(weather[:data][:attributes][:hourly].first[:temp]).to eq(286.15)
		expect(weather[:data][:attributes][:daily].first[:low]).to eq(282.27)
	end
end
