require 'rails_helper'

describe 'Login'  do
  it 'user logins' do
    headers = {
    "Accept" => "application/json"
}
    parameters = {
  email: "whatever@example.com",
  password: "password",
}
		User.create(email: "whatever@example.com", password: "password", password_confirmation: "password")
    get '/api/v1/sessions', :params => parameters, :headers => headers
    expect(response).to be_successful
    expect(response.body).to include("email")
    expect(response.body).to include("whatever@example.com")
    expect(response.body).to include("users")
    expect(response.body).to include("api_key")
  end

	it 'catch bad login' do
		headers = {
    "Accept" => "application/json"
}
    parameters = {
  email: "whatever@example.com",
  password: "password",
}
		get '/api/v1/sessions', :params => parameters, :headers => headers
		expect(response).to_not be_successful
		expect(response.status).to equal(400)
		expect(response.body).to include("Credentials are bad")
	end
end
