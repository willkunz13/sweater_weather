require 'rails_helper'

describe 'Road Trip', :vcr  do
  it 'get route and weather' do
		headers = {
    "Accept" => "application/json"
}
    parameters = {
	origin: "Denver,CO",
	destination: "Pueblo,CO",
	api_key: "jgn983hy48thw9begh98h4539h4"
}
    User.create(email: "whatever@example.com", password: "password", password_confirmation: "password", api_key: "jgn983hy48thw9begh98h4539h4")
		post '/api/v1/road_trip', :params => parameters, :headers => headers
		expect(response).to be_successful
		expect(response.body).to include("data")
		expect(response.body).to include("type")
		expect(response.body).to include("origin")
		expect(response.body).to include("destination")
		expect(response.body).to include("temp")
	end

	it 'catch bad api key' do
		headers = {
    "Accept" => "application/json"
}
    parameters = {
  origin: "Denver,CO",
  destination: "Pueblo,CO",
  api_key: "jgn983hy48thw9begh98h4539h4"
}
    post '/api/v1/road_trip', :params => parameters, :headers => headers
    expect(response).to_not be_successful
		expect(response.status).to equal(401)
	end
end
