require 'rails_helper'

describe 'GeoService', :vcr do
  it 'fetch_latlong' do
		geo_service = GeoService.new('denver,co')
		expect(geo_service.fetch_latlong).to eq({:lat=>39.7392358, :lng=>-104.990251})
	end
end
