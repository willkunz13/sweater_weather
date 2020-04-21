class Forecast
	
	attr_accessor :image

	attr_reader :current, :hourly, :daily, :id

	def initialize(data)
		forecast = ForecastHelper.new(data)
		@current = forecast.create_current
		@hourly = forecast.create_hourly
		@daily = forecast.create_daily
	end
end
