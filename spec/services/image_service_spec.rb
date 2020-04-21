require 'rails_helper'

describe 'ImageService', :vcr do
  it 'response' do
		image_service = ImageService.new('denver,co')
		expect(image_service.response).to be_a(String)
	end
end
