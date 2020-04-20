require 'rails_helper'

describe 'Register'  do
  it 'user registers' do
		headers = {
	 	"Accept" => "application/json"
}
		parameters = {
  email: "whatever@example.com",
  password: "password",
  password_confirmation: "password"
}
		post '/api/v1/users', :params => parameters, :headers => headers
		expect(response).to be_successful
		expect(response.body).to include("email")
		expect(response.body).to include("whatever@example.com")
		expect(response.body).to include("users")
		expect(response.body).to include("api_key")
	end

	it 'catch bad' do
		headers = {
    "Accept" => "application/json"
}
    parameters = {
  email: "whatever@example.com",
  password: "password",
  password_confirmation: "pass"
}
    post '/api/v1/users', :params => parameters, :headers => headers
    expect(response).to_not be_successful
		expect(response.body).to include("Password confirmation doesn't match Password")
	end
end
