require 'rails_helper'

describe 'TripService', :vcr do
  it 'fetch_travel_time' do
		trip_service = TripService.new('Denver,CO','Pueblo,CO')
		expect(trip_service.fetch_travel_time).to eq({:text=>"1 hour 48 mins", :value=>6480})
	end

	it 'create_trip' do
		trip_service = TripService.new('Denver,CO','Pueblo,CO')
		trip = trip_service.create_trip
		expect(trip.origin).to eq('Denver,CO')
		expect(trip.travel_time).to eq('1 hour 48 mins')
	end
end
