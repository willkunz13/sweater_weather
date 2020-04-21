class ForecastHelper

	attr_reader :current, :hourly, :daily 
	
	def initialize(data)
		@data = data
		@hourly_data = data[:hourly]
		@daily_data = data[:daily]
	end

	def create_current
		Current.new(@data)
	end

	def create_hourly
		@hourly_data.map do |snippet|
			Hourly.new(snippet)
		end
	end

	def create_daily
		@daily_data.map do |snippet|
			Daily.new(snippet)
		end
	end
end
