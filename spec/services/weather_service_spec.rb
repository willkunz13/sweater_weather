require 'rails_helper'

describe 'WeatherService', :vcr do
  it 'response' do
		weather_service = WeatherService.new({:lat=>39.7392358, :lng=>-104.990251})
		weather = weather_service.response
		expect(weather.current.temp).to be_truthy
		expect(weather.hourly).to be_truthy
		expect(weather.hourly.first.temp).to be_truthy
		expect(weather.daily).to be_truthy
		expect(weather.daily.first.low).to be_truthy
	end
	
	it 'there_weather' do
		weather_service = WeatherService.new({:lat=>39.7392358, :lng=>-104.990251})
		weather = weather_service.there_weather
		expect(weather.temp).to be_a(Float)
		expect(weather.description).to be_a(String)
	end
end
