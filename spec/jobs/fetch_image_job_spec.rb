require 'rails_helper'

RSpec.describe FetchImageJob, :vcr, type: :job do
	it 'perform' do
		expect(FetchImageJob.perform_now('denver,co')).to be_a(String)
	end
end
