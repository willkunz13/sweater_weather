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
	end
end
